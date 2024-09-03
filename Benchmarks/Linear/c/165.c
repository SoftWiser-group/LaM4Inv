//SyGuG2018_fib_19
int main(){
    int n;
    int m;
    int x;
    int y;

    //pre-condition
    x = 0;
    y = m;
    assume(n >= 0);
    assume(m >= 0);
    assume(m < n);

    //loop-body
    while(x < n){
        if(x + 1 <= m){
            x = x + 1;
        }
        else if (x + 1 > m){
            x = x + 1;
            y = y + 1;
        }
    }

    //post-condition
    if(x >= n)
        assert(y == n);
}