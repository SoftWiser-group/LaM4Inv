from langchain_community.llms import Ollama

llm = Ollama(model="llama3:8b")


def getLlamaAnswer(prompt):
    answer=llm.invoke(prompt)
    return answer

if __name__ == "__main__":
    p = "nihao"
    print(getLlamaAnswer(p))