//SyGuG2018_fib_11
int main(){
    int x;
    int i;
    int j;

    //pre-condition
    j = 0;
    assume(x > 0);
    i = 0;

    //loop-body
    while(i < x){
        j = j + 2;
        i = i + 1;
    }

    //post-condition
    if(i >= x)
        assert(j == 2 * x);
}