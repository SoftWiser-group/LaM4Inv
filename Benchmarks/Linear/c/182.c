//SyGuG2018_fib_41
int main(){
    int k;
    int n;
    int i;
    int j;

    //pre-condition
    j = 0;
    i = 0;
    assume(n >= 0);
    assume(n <= 20000001);
    assume(k >= 0);
    assume(k <= 20000001);

    //loop-body
    while(i <= n){
        i = i + 1;
        j = j + 1;
    }

    //post-condition
    if(i > n)
        assert((k + i + j) > (2 * n));
        
}