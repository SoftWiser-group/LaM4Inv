//SyGuG2018_fib_23_x
int main(){
    int i;
    int n;
    int sum;

    //pre-condition
    sum = 0;
    i = 0;
    assume(n > 0);

    //loop-body
    while(i < n){
        sum = sum + i;
        i = i + 1;
    }

    //post-condition
    if(i >= n)
        assert(sum >= 0);
}