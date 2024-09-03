//SyGuG2018_fib_21
int main(){
    int i;
    int j;
    int k;
    int n;
    int v;

    //pre-condition
    k = 0;
    i = 0;
    assume(n > 0);
    assume(n < 10);

    //loop-body
    while(i < n){
        if(unknown()){
            i = i + 1;
            k = k + 4000;
            v = 0;
        }
        else{
            i = i + 1;
            k = k + 2000;
            v = 1;
        }

    }

    //post-condition
    if(i >= n)
        assert(k > n);
}