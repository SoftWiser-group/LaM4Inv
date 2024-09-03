import re
from GPT_chat import convert

def detect_outer_operator(expression):

    if expression[9:12]=='and':
        return '&&'
    elif expression[9:12]=='or ':
        return '||'
    else:
        return None 

def split_expression(expression, operator):
    parts = []
    bracket_count = 0
    start = 0
    for i, char in enumerate(expression):
        if char == '(':
            bracket_count += 1
        elif char == ')':
            bracket_count -= 1
        elif bracket_count == 0 and expression[i:i+len(operator)] == operator:
            parts.append(expression[start:i].strip())
            start = i + len(operator)
    parts.append(expression[start:].strip())  
    return parts

def c_assert_spilit(assert_statement):

    expression = assert_statement[assert_statement.find("(")+1:assert_statement.rfind(")")]
    
    smtlib2=convert.convert_c_assert_to_smtlib2(assert_statement)


    outer_operator = detect_outer_operator(smtlib2)
    

    if outer_operator:
        split_op = '&&' if outer_operator == '&&' else '||'
        predicates = split_expression(expression, split_op)
    else:
        predicates = [expression]  
    
    return predicates, outer_operator


if __name__ == "__main__":
    test_cases = [
        "assert((x >= -50) && (y >= 0) && (y == 0 && x + y >= -49));",
        "assert((x >= -50) || (y >= 0) || (y == 0 && x + y >= -49));",
        "assert(x >= -50 && y >= 0 && y == 0 || (x + y >= -49 && x > 100));",
        "assert((lock == 0 && x != y) || (lock == 1 && x == y));",
        "assert((j == (i * (i - 1)) / 2) && (i >= 0) && (i <= n) && (k >= 0));",
        "assert((x >= y) && (y <= 100000));",
        "assert(y <= 100000);",
        "assert(x >= y && y <= 100000); ",
        "assert((x == y + 10*n) && (x >= 0) && (y >= 0) || (x == 0 && y == 0));",
        "assert((n>0&&x<0) || (n>0&&x>=0) || (n<=0&&x<=0));"
    ]

    for test in test_cases:
        print(c_assert_spilit(test))