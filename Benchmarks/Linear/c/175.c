//SyGuG2018_fib_30_x
int main(){
    int i;
    int c;
    int n;

    //pre-condition
    i = 0;
    c = 0;
    assume(n > 0);

    //loop-body
    while(i < n){
        c = c + i;
        i = i + 1;
    }

    //post-condition
    if(i >= n) 
        assert(c >= 0);
}