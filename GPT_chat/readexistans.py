import re
from collections import defaultdict

def extract_assert_statements(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
    
    file_pattern = re.compile(r'Benchmarks/.+?\.c')
    assert_pattern = re.compile(r'assert\(.*?\);')

    assert_dict = defaultdict(list)

    current_file = None
    for line in content.split('\n'):
        file_match = file_pattern.match(line)
        if file_match:
            current_file = file_match.group(0)
        elif current_file:
            assert_matches = assert_pattern.findall(line)
            if assert_matches:
                assert_dict[current_file].extend(assert_matches)
    
    return assert_dict

def readans(file_path):

    assert_dict = extract_assert_statements(file_path)
    return assert_dict

if __name__ == "__main__":
    file_path = './Result/LinearGPT3Turbosimple1.txt'  
    assert_dict = extract_assert_statements(file_path)

    for filename, asserts in assert_dict.items():
        print(f"File: {filename}")
        for assert_statement in asserts:
            print(f"  {assert_statement}")