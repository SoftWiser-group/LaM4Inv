//SyGuG2018_fib_32
int main(){
    int i;
    int j;
    int n;
    int k;
    int b;

    //pre-condition
    n = 0;
    b = 0;
    assume(k > 0);
    assume(k < 20000001);
    assume(i == j);

    //loop-body
    while(n < (2 * k)){
        n = n + 1;
        if(b == 1){
            b = 0;
            i = i + 1;
        }
        else{
            b = 1;
            j = j + 1;
        }
    }

    //post-condition
    if(n >= (2 * k)) 
        assert(i == j);
}