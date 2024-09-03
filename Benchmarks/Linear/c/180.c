//SyGuG2018_fib_37
int main(){
    int x;
    int n;
    int m;

    //pre-condition
    x = 0;
    m = 0;
    assume(n > 0);

    //loop-body
    while(x < n){
        if(unknown()){
            m = x;
        }
        x = x + 1;
    }

    //post-condition
    if(x >= n && n > 0)
        assert(m < n);
}