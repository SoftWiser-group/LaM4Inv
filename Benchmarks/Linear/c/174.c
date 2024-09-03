//SyGuG2018_fib_28
int main(){
    int x;
    int y;
    int n;

    //pre-condition
    n = 0;
    assume(x >= 0);
    assume(y >= 0);
    assume(x == y);

    //loop-body
    while(x != n){
        x = x - 1;
        y = y - 1;
    }

    //post-condition
    if(x == n) 
        assert(y == n);
}