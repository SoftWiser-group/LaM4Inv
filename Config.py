class Config:
    SMT_CHECK_TIME = 50

    Limited_time = 600

    maxkinduction=True

    BMC = True

    Verification="esbmc"

    PROMPT="full"

    # GPT4 GPT4Turbo GPT3.5Turbo Llama3 Man Exist
    LLM="GPT3.5Turbo"

    timeout_seconds = 5
    
    maxkstep = 10

    resultpath="test"

    exsitresult="test"

config = Config()
