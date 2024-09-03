#  LaM4Inv


A loop invariant inference tool which combines LLMs with traditional Bounded Model Checking tools..

### Install
Our current tool only runs on windows system.
1. `cd /LM2C/`
2. If you want to run experiments on GPT models, prepare a python environment with python version = 3.7.10, then run the command `pip install -r requirements.txt`. You should input your own API key in `GPT_chat/GPT.py`. You should disable all `from GPT_chat import Llama3chat` in `RunAllLinear.py` and `GPT_chat/GPT.py`.
3. If you want to run experiments on Llama3-8B, prepare a python environment with python version >= 3.8, then run the command `pip install -r requirementsllama.txt`. The recommended configuration is a GPU higher than 4090 and more than 48G of RAM. 

### Run

1. `cd /LM2C/`
2. All parameter configurations are in the `Config.py` file and you can modify them as needed. 
3. Before you start experimenting, you have to go to the `Result` folder and create the output folder and `.txt` file according to the parameter in `Config.py`. If you want to run all linear benchmarks, `python RunAllLinear.py`.
4. The results can be founded in `Result` directory.
5. If you want to run specific one benchmark, change the range of `i` in `RunAllLinear.py`.

###Analyze
1. All result are stored in `Result`. 
2. `python averageTimeAndProposal.py` If you want to analyze the results of the experiment and output the average time spent and the number of proposals.

### Benchmarks

1. All benchmarks are put in "Benchmarks/", each instance has three files: c source file, CFG json file, and SMT file.
2. If you want to add new instance, you only need to prepare the three files.
3. As for how to prepare the CFG json file and SMT file, please refer to [Code2Inv](https://github.com/PL-ML/code2inv), which use Clang to do it automatically. 
