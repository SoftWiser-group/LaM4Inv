//SyGuG2018_fib_08
int main(){
    int x;
    int y;

    //pre-condition
    x = 0;
    y = 0;

    //loop-body
    while(unknown()){
        if(x >= 4){
            x = x + 1;
            y = y + 1;
        }
        else if(x < 0){
            y = y - 1;
        }
        else{
            x = x + 1;
            y = y + 100;
        }
    }

    //post-condition
    if(x >= 4)
        assert(y > 2);

}