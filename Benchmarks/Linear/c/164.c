//SyGuG2018_fib_18
int main(){
    int b;
    int j;
    int n;
    int flag;

    //pre-condition
    j = 0;
    b = 0;
    assume(n > 0);

    //loop-body
    while(b < n){
        if(flag == 1){
            j = j + 1;
            b = b + 1;
        }
        else if (flag != 1){
            b = b + 1;
        }
    }

    //post-condition
    if(j != n)
        assert(flag != 1);
}