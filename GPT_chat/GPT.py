#0: get a get an initial answer
import openai
import re
import subprocess
import random
from GPT_chat import convert
from GPT_chat import spilit
from GPT_chat import readexistans
from Config import config
# from GPT_chat import Llama3chat
from z3 import *

openai.api_key = "******************************************************"

maxkinduction=config.maxkinduction
BMC = config.BMC
Verification=config.Verification
PROMPT=config.PROMPT
LLM=config.LLM
timeout_seconds = config.timeout_seconds
maxkstep = config.maxkstep

def is_parentheses_balanced(s):
    stack = []
    
    matching_parentheses = {')': '(', ']': '[', '}': '{'}
    
    for char in s:

        if char in '({[':
            stack.append(char)

        elif char in ')}]':

            if not stack or stack[-1] != matching_parentheses[char]:
                return False

            stack.pop()
    

    return not stack

def rewrite_case_split_into_disjunction(result):
        prompt = ""
        message = "Get rid of the ternary operator. Don't explain. Your answer should simply be 'assert(...);'."
        prompt = prompt + message
        message = f"assert(b == (a >= 18) ? 0 : b + a); => assert((a >= 18 && b == 0) || (a < 18 && b == b + a)); \
assert(c > 0 && x  + (a  < 1  ? 1 : 2) == 3); => assert(c > 0 && (a < 1 && x  + 1== 3) || (a >= 1 && x + 2 == 3)); \
assert({result}); => "
        prompt = prompt + message
        if LLM == "Llama3":
            result=Llama3chat.getLlamaAnswer(prompt)
        else:
            gptAnswer = openai.ChatCompletion.create(
                    model="gpt-4", 
                    messages=[{"role": "user", "content": prompt}]
                )
            result = gptAnswer["choices"][0]["message"]["content"]

        result=add_parentheses_to_pow_args(result)
        result=extract_assert_statements(result)

        return result
        
def run_command_with_timeout(command, timeout):
    process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    stdout, stderr = None, None
    try:
        stdout, stderr = process.communicate(timeout=timeout)
    except subprocess.TimeoutExpired:
        process.kill()
        stdout, stderr = process.communicate()
        return "subprocess.TimeoutExpired"
    finally:
        stdout = stdout if stdout is not None else ""
        stderr = stderr if stderr is not None else ""

    output_str = f"{stdout}{stderr}"
    
    return output_str

def undefined_function(subassertion):
    cannot_exsit=['min', '?', 'max', 'unknown', 'factorial', 'pow', 'for', '=>', 'old', 'INT', '->>', '->']
    for cannot_exist_function in cannot_exsit:
        if str(cannot_exist_function) in subassertion:
            return False
    return True

def get_prompt(cProgram,promptType,previousAns,counterexample):
    if PROMPT == "simple":
        return get_prompt2(cProgram,promptType,previousAns,counterexample)
    else:
        return get_prompt1(cProgram,promptType,previousAns,counterexample)

def get_prompt1(cProgram,promptType,previousAns,counterexample):
    if promptType==0:
        cProgram=cProgram+" Print loop invariants as valid C assertions that help prove the assertion. \
In order to get a correct answer, You may want to consider both the situation of not entering the loop and the situation of jumping out of the loop. \
If some of the preconditions are also loop invariant, you need to add them to your answer as well. \
Use '&&' or '||' if necessary. Don't explain. Your answer should be 'assert(...);'"
    elif promptType==1:
        cProgram=cProgram+" Print loop invariants as valid C assertions that help prove the assertion. \
Your previous answer '"+previousAns+"'is too strict and not reachable. \
The Reachability of the loop invariant means that the loop invariant I can be derived based on the pre-condition P, i.e. P ⇒ I. \
The following is a counterexample given by z3: "+counterexample+". \
In order to get a correct answer, You may want to consider the initial situation where the program won't enter the loop. \
Use '&&' or '||' if necessary. Don't explain. Your answer should be 'assert(...);'"
    elif promptType==2:
        cProgram=cProgram+" Print loop invariants as valid C assertions that help prove the assertion. \
Your previous answer '"+previousAns+"'is too weak and not provable. \
The Provability of the loop invariant means that after unsatisfying loop condition B, we can prove the post-condition Q, i.e. (I ∧ ¬ B) ⇒ Q. \
The following is a counterexample given by z3: "+counterexample+". \
In order to get a correct answer, you may want to consider the special case of the program executing to the end of the loop. If some of the preconditions are also loop invariant, you need to add them to your answer as well. \
Use '&&' or '||' if necessary. Don't explain. Your answer should be 'assert(...);'"
    elif promptType==3:
        cProgram=cProgram+" Print loop invariants as valid C assertions that help prove the assertion. \
Your previous answer '"+previousAns+"'is not inductive. \
The Inductive of the loop invariant means that if the program state satisfies loop condition B, the new state obtained after the loop execution S still satisfies, i.e. {I ∧ B} S {I}. \
The following is a counterexample given by z3: "+counterexample+". \
In order to get a correct answer, You may want to consider the special case of the program executing to the end of the loop. \
Use '&&' or '||' if necessary. Don't explain. Your answer should be 'assert(...);'"
    return cProgram

def get_prompt2(cProgram,promptType,previousAns,counterexample):
    cProgram=cProgram+" Print loop invariants as valid C assertions that help prove the assertion. \
Use '&&' or '||' if necessary. Don't explain. Your answer should be 'assert(...);'"
    return cProgram


def translate_to_smtlib2(loopinvariant):
    res="Translate these C assertions to smtlib2. Your answer should be 'assert(...)' in one line, Use 'and' or 'or' if necessary, Don't explain.\n"+loopinvariant
    return res

def add_parentheses_to_pow_args(expression):
    pattern = re.compile(r'pow\(([^,]+),([^)]+)\)')
    def replacer(match):
        arg1, arg2 = match.groups()
        return f'pow(({arg1}),({arg2}))'
    result = pattern.sub(replacer, expression)
    return result

def extract_assert_statements(text):
    """
    Extracts all assert(...) statements from the given text.

    Parameters:
    - text: A string from which to extract assert statements.

    Returns:
    - A list of extracted assert statements.
    """
    # Define a regular expression pattern to match assert statements
    pattern = r"assert\((.*?)\);"
    
    # Find all occurrences of the pattern in the text
    matches = re.findall(pattern, text, flags=re.DOTALL)
    
    # Format the matches as assert statements and return them
    result=[]
    for match in matches:
        if is_parentheses_balanced(match) and undefined_function(match):
            parts = match.split(",")
            for part in parts:
                tmp=f"assert({part});"
                if '\"' not in tmp:
                    result.append(tmp)
    return result

def esbmc_and(cProgram,subassertion):
    assertion='assert('+subassertion+');'
    esbmcProgram=cProgram.replace('unknown()','rand()%2==0')
    file=open("./check/"+config.resultpath+".c","w")
    leftcount=0
    rightcount=0
    judge=True
    B=""
    for lines in esbmcProgram.splitlines():
        if "while" in lines:
            B=lines[lines.find("(")+1:lines.rfind(")")]
            lines=assertion+"\n"+lines+"\n"+assertion
        if "assume" in lines:
            condition=lines[lines.find("(")+1:lines.rfind(")")]
            lines="if(!("+condition+")) return 0;"
        if "{" in lines:
            leftcount+=1
        if "}" in lines:
            rightcount+=1
        if leftcount>1 and leftcount-1==rightcount and judge:
            file.write(assertion+"\n}\n}")
            judge=False
            break
        file.write(lines+"\n")
    file.close()
    tmp = str(subassertion).replace(' ','')
    tmp = tmp.replace('(','')
    tmp = tmp.replace(')','')
    B = B.replace(' ','')
    if tmp in B:
        return False
    if Verification == "esbmc":
        if maxkinduction:
            command = [".\\windows-release\\bin\\esbmc.exe", ".\\check\\"+config.resultpath+".c", "--floatbv", "--k-induction", "--max-k-step", str(maxkstep)]
        else:
            command = [".\\windows-release\\bin\\esbmc.exe", ".\\check\\"+config.resultpath+".c", "--floatbv", "--k-induction"]
    else:
        if maxkinduction:
            command = [".\\cbmc\\bin\\cbmc.exe", ".\\check\\"+config.resultpath+".c", "--unwind", str(maxkstep)]
        else:
            command = [".\\cbmc\\bin\\cbmc.exe", ".\\check\\"+config.resultpath+".c", "--unwind", "50"]

    val = run_command_with_timeout(command, timeout_seconds)

    if val != "subprocess.TimeoutExpired":
        if 'VERIFICATION FAILED' in str(val):
            return False
        else:
            return True
    else:
        return False

def esbmc_or(cProgram,subassertion):
    assertion='assert(!('+subassertion+'));'
    esbmcProgram=cProgram.replace('unknown()','rand()%2==0')
    file=open("./check/"+config.resultpath+".c","w")
    leftcount=0
    rightcount=0
    judge=True
    for lines in esbmcProgram.splitlines():
        if "while" in lines:
            lines=assertion+"\n"+lines+"\n"+assertion
        if "assume" in lines:
            condition=lines[lines.find("(")+1:lines.rfind(")")]
            lines="if(!("+condition+")) return 0;"
        if "{" in lines:
            leftcount+=1
        if "}" in lines:
            rightcount+=1
        if leftcount>1 and leftcount-1==rightcount and judge:
            file.write(assertion+"\n}\n}")
            judge=False
            break
        file.write(lines+"\n")
    file.close()
    if Verification == "esbmc":
        if maxkinduction:
            command = [".\\windows-release\\bin\\esbmc.exe", ".\\check\\"+config.resultpath+".c", "--floatbv", "--k-induction", "--max-k-step", str(maxkstep)]
        else:
            command = [".\\windows-release\\bin\\esbmc.exe", ".\\check\\"+config.resultpath+".c", "--floatbv", "--k-induction"]
    else:
        if maxkinduction:
            command = [".\\cbmc\\bin\\cbmc.exe", ".\\check\\"+config.resultpath+".c", "--unwind", str(maxkstep)]
        else:
            command = [".\\cbmc\\bin\\cbmc.exe", ".\\check\\"+config.resultpath+".c", "--unwind", "50"]

    val = run_command_with_timeout(command, timeout_seconds)

    if val != "subprocess.TimeoutExpired":
        if 'VERIFICATION SUCCESSFUL' in str(val):
            return False
        else:
            return True
    else:
        return False



def translate_AnsSet_to_smtlib2(AnsSet):
    CAssertion="assert("
    for index in range(len(AnsSet)):
        if index <len(AnsSet)-1:
            CAssertion=CAssertion+"("+AnsSet[index]+") && "
        else:
            CAssertion=CAssertion+"("+AnsSet[index]+")"
    CAssertion=CAssertion+");"

    smtlib2=convert.convert_c_assert_to_smtlib2(CAssertion)
    smtlib2=smtlib2.replace('\t','')
    smtlib2=smtlib2.replace('\n','')
    smtlib2=smtlib2.replace('```smtlib2','')
    smtlib2=smtlib2.replace('```smtlib','')
    smtlib2=smtlib2.replace('`','')
    return CAssertion,smtlib2


def get_answer(cProgram,promptType,previousAns,counterexample,AnsSet,existans,readexistanscount):
    if LLM == "GPT4":
        gptAnswer = openai.ChatCompletion.create(
                model="gpt-4", 
                messages=[{"role": "user", "content": get_prompt(cProgram,promptType,previousAns,counterexample)}]
            )
        result = gptAnswer["choices"][0]["message"]["content"]
    elif LLM == "GPT4Turbo":
        gptAnswer = openai.ChatCompletion.create(
                model="gpt-4-turbo", 
                messages=[{"role": "user", "content": get_prompt(cProgram,promptType,previousAns,counterexample)}]
            )
        result = gptAnswer["choices"][0]["message"]["content"]
    elif LLM == "GPT3.5Turbo":
        gptAnswer = openai.ChatCompletion.create(
                model="gpt-3.5-turbo", 
                messages=[{"role": "user", "content": get_prompt(cProgram,promptType,previousAns,counterexample)}]
            )
        result = gptAnswer["choices"][0]["message"]["content"]
    elif LLM == "Man":
        print("Input loop invariant:")
        result=input()
    elif LLM == "Exist":
        if readexistanscount < len(existans):
            result = existans[readexistanscount]
        else:
            result = ""
    elif LLM == "Llama3":
        result = Llama3chat.getLlamaAnswer(get_prompt(cProgram,promptType,previousAns,counterexample))

    result=add_parentheses_to_pow_args(result)
    result=extract_assert_statements(result)
    for tmp in result:
        if '?' in tmp:
            result.remove(tmp)
            result.extend(rewrite_case_split_into_disjunction(tmp))

    smtlib2=convert.convert_c_assert_list_to_smtlib2(result)

    if BMC == True:
        for index in range(len(result)):
            CAssertion=result[index]
            CAssertionlist, outer_operator=spilit.c_assert_spilit(CAssertion)
            if outer_operator=='||':
                ifaddall=esbmc_and(cProgram,CAssertion[CAssertion.find("(")+1:CAssertion.rfind(")")])
                if ifaddall:
                    tempansset=[]
                    for subassertion in CAssertionlist:
                        if subassertion not in tempansset and undefined_function(subassertion):
                            ifAdd=esbmc_or(cProgram,subassertion)
                            if ifAdd:
                                tempansset.append(subassertion)
                    resans=""
                    for res in tempansset:
                        resans=resans+"("+res+")"+"||"
                    if resans[0:-2] not in AnsSet:
                        AnsSet.append(resans[0:-2])
            else:
                for subassertion in CAssertionlist:
                    if subassertion not in AnsSet and undefined_function(subassertion):
                        ifAdd=esbmc_and(cProgram,subassertion)
                        if ifAdd:
                            AnsSet.append(subassertion)
    else:
        AnsSet=[]
    return smtlib2,result,AnsSet

def add_precondition(cProgram,preconditions):
    result = preconditions
    smtlib2=convert.convert_c_assert_list_to_smtlib2(result)
    AnsSet = []

    for index in range(len(result)):
        CAssertion=result[index]
        CAssertionlist, outer_operator=spilit.c_assert_spilit(CAssertion)
        if outer_operator=='||':
            ifaddall=esbmc_and(cProgram,CAssertion[CAssertion.find("(")+1:CAssertion.rfind(")")])
            if ifaddall:
                tempansset=[]
                for subassertion in CAssertionlist:
                    if subassertion not in tempansset and undefined_function(subassertion):
                        ifAdd=esbmc_or(cProgram,subassertion)
                        if ifAdd:
                            tempansset.append(subassertion)
                resans=""
                for res in tempansset:
                    resans=resans+"("+res+")"+"||"
                if resans[0:-2] not in AnsSet:
                    AnsSet.append(resans[0:-2])
        else:
            for subassertion in CAssertionlist:
                if subassertion not in AnsSet and undefined_function(subassertion):
                    ifAdd=esbmc_and(cProgram,subassertion)
                    if ifAdd:
                        AnsSet.append(subassertion)
    return smtlib2,result,AnsSet