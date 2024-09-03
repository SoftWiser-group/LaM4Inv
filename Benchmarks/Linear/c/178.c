//SyGuG2018_fib_35
int main(){
    int x;
    int n;

    //pre-condition
    x = 0;
    assume(n > 0);

    //loop-body
    while(x < n){
        x = x + 1;
    }

    //post-condition
    if(x >= n)
        assert(x == n);
}