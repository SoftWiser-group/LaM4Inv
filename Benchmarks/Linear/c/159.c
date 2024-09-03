//SyGuG2018_fib_15
int main(){
    int n;
    int j;
    int k;

    //pre-condition
    j = 0;
    assume(n > 0);
    assume(k > n);

    //loop-body
    while(j < n){
        j = j + 1;
        k = k - 1;
    }

    //post-condition
    if(j >= n)
        assert(k >= 0);
}