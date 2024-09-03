def read_last_line_of_each_file(file_paths):
    times = []  
    proposals = []
    solved = []
    unsolved = []
    count = 0
    for file_path in file_paths:
        try:
            with open(file_path, 'r') as file:
                count +=1
                lines = file.readlines()
                judge = False
                for line in lines:
                    if "Time cost is :" in line:
                        judge = True
                        time_line = line  
                        time=time_line[time_line.find(':')+1:].strip()    
                        if time!='':
                            times.append(float(time))  
                            # print(file_path)
                    if "The proposal times is :" in line:
                        judge = True
                        proposal_line = line  
                        proposal=proposal_line[proposal_line.find(':')+1:].strip()    
                        if proposal!='':
                            proposals.append(float(proposal)) 
                solved.append(judge)
                if judge == False:
                    unsolved.append(count)
        except Exception as e:
            print(f"Error reading {file_path}: {e}")
    # print(len(proposals))
    # print(unsolved)
    if proposals and times:
        average_proposal = sum(proposals) / len(proposals)
        average_time = sum(times) / len(times)
        return average_time, average_proposal, len(times), max(times)
    else:
        return None  


if __name__ == "__main__":
    all_path = [r"Result/GPT4TurboFull/"]
    all_s=[]
    all_t=[]
    all_p=[]
    for file_path in all_path:
        print(file_path)
        file_paths=[]
        for i in range(1,317):
            filename = file_path + str(i) + ".txt"
            file_paths.append(filename)
        average_time ,average_proposal, correct_verification, max_time = read_last_line_of_each_file(file_paths)
        all_s.append(correct_verification)
        all_t.append(average_time)
        all_p.append(average_proposal)
        if average_time is not None and average_proposal is not None:
            print(f"\
    The number of correct loop invariant is: {correct_verification}.\n\
    The average time is: {average_time}. \n\
    The max time is: {max_time}. \n\
    The average proposal is: {average_proposal}\
        ")
        else:
            print("No numbers were read.")