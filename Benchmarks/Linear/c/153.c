//SyGuG2018_fib_10
int main(){
    int x;
    int y;
    int w;
    int z;

    //pre-condition
    w = 1;
    z = 0;
    x = 0;
    y = 0;

    //loop-body
    while(unknown()){
        if(w == 1 && z == 0){
            x = x + 1;
            w = 0;
            y = y + 1;
            z = 1;
        }
        else if(w != 1 && z == 0){
            y = y + 1;
            z = 1;
        }
        else if(w == 1 && z != 0){
            x = x + 1;
            w = 0;
        }
        else if(w != 1 && z != 0){
            continue;
        }
    }

    //post-condition
    assert(x == y);
}