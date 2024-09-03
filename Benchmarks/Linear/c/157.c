//SyGuG2018_fib_14
int main(){
    int a;
    int j;
    int m;

    //pre-condition
    a = 0;
    j = 1;
    assume(m > 0);

    //loop-body
    while(j <= m){
        if(unknown()){
            a = a + 1;
        }
        else{
            a = a - 1;
        }
        j = j + 1;
    }

    //post-condition
    if(j > m)
        assert(a >= 0 - m);
}