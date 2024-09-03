from main import main
import os
from Config import config
from GPT_chat import readexistans
# from GPT_chat import Llama3chat
CUDA_VISIBLE_DEVICES="0"
if __name__ == "__main__":
    path = config.resultpath
    path = "Result/" + config.resultpath + ".txt"
    result_file = open(path, "a")
    if not os.path.isdir(r"Result/"+config.resultpath+r"/"):
        filepath = "Result/"
        os.chdir(filepath)
        new_folder = config.resultpath
        os.makedirs(new_folder)
    benchmarks_c_path = r"Benchmarks/Linear/c/"
    benchmarks_g_path = r"Benchmarks/Linear/c_graph/"
    benchmarks_s_path = r"Benchmarks/Linear/c_smt2/"
    results = []
    for i in range(228,229):
        #1-2 #3-6 #7-14 #15-22 #23-24 #25-34 #35-37 #38-39 #40-62 #63-70 #71-82 #83-86 #87-90 #91-92
        #93-100 #101-105 #106-109 #110-123 #124-127 #128-129 #130-132 #133
        gfilename = str(i) + ".c.json"
        path_g = benchmarks_g_path + gfilename
        sfilename = str(i) + ".c.smt"
        path_s = benchmarks_s_path + sfilename
        cfilename = str(i) + ".c"
        path_c = benchmarks_c_path + cfilename
        timeUsed, answer, GPT_answer, iteration = main(path_c, path_g, path_s, i)
        results.append(timeUsed)
        result_file.write(str(path_c)+'\n')
        for gptans in GPT_answer:
            result_file.write(str(gptans)+'\n')
        result_file.write(str(timeUsed) + '\t' + str(answer) + '\t' + str(iteration) +'\n')
        result_file.write('\n')
        result_file.flush()
    result_file.close()

    print(results)
