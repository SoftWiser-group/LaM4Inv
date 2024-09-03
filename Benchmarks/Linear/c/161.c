//SyGuG2018_fib_16
int main(){
    int x;
    int y;
    int i;
    int j;

    //pre-condition
    x = i;
    y = j;

    //loop-body
    while(x != 0){
        x = x - 1;
        y = y - 1;
    }

    //post-condition
    if(y != 0)
        assert(i != j);
        
}