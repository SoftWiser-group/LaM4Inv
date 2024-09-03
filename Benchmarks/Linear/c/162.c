//SyGuG2018_fib_17n
int main(){
    int k;
    int i;
    int j;
    int n;
    int turn;

    //pre-condition
    k = 1;
    i = 1;
    j = 0;
    turn = 0;

    //loop-body
    while((turn >= 0) && (turn < 3)){
        if(turn == 0 && i >= n){
            turn = 3;
        }
        else if(turn == 1 && j < i){
            k = k + i - j;
            j = j + 1;
        }
        else if (turn == 1 && j >= i){
            turn = 2;
        }
        else if(turn == 2){
            i = i + 1;
            turn = 0;
        }
    }

    //post-condition
    if(turn == 3)
        assert(k >= n);
}