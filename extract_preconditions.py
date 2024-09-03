import re

def extract_preconditions(code):

    variable_pattern = r'int\s+[\w\s,=]+;'

    assignment_pattern = r'\b\w+\s*=\s*\w+;'

    assume_pattern = r'assume\(([^)]+)\);'

    if 'while' in code:
        code_before_while = code.split('while')[0]
    else:
        code_before_while = code

    variable_matches = re.findall(variable_pattern, code_before_while)
    assignment_matches = re.findall(assignment_pattern, code_before_while)
    assume_matches = re.findall(assume_pattern, code_before_while)


    assertions = []


    for var_def in variable_matches:

        var_def = var_def.replace('int', '').replace(';', '').strip()
        vars_with_values = var_def.split(',')
        for var in vars_with_values:
            if '=' in var:
                var_name, value = var.split('=')
                var_name = var_name.strip()
                value = value.strip()
                assertions.append(f'assert({var_name} == {value});')


    for assign in assignment_matches:
        var_name, value = assign.replace(';', '').split('=')
        var_name = var_name.strip()
        value = value.strip()
        assertions.append(f'assert({var_name} == {value});')


    for assume in assume_matches:
        assertions.append(f'assert({assume});')

    return assertions

if __name__ == "__main__":
    c_code = """
    int main() {
        int d1 = 1;
        int d2 = 1;
        int d3 = 1;
        int x1;
        int x2;
        int x3;

        assume(x1 >= 1);
        assume(x2 >= x1);
        assume(x3 >= x1);

        while( x1 > 0) {
            if(x2 > 0) {
                if(x3 > 0) {
                    x1 = x1 - d1;
                    x2 = x2 - d2;
                    x3 = x3 - d3;
                }
            }
        }

        //assert (x2 >= 0);
        assert (x3 >= 0);
    }
    """

    preconditions = extract_preconditions(c_code)
    for precondition in preconditions:
        print(precondition)