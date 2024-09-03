//SyGuG2018_fib_05_x
int main(){
    int x;
    int y;
    int i;
    int j;

    //pre-condition
    x = 0;
    y = 0;
    j = 0;
    i = 0;    

    //loop-body
    while(unknown()){
        x = x + 1;
        y = y + 1;
        i = x + i;
        if(unknown()){
            j = y + j;
        }
        else{
            j = y + j + 1;
        }
    }

    //post-condtion
    assert(j >= i);
}