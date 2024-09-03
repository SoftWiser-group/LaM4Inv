//SyGuG2018_fib_44
int main(){
    int i;
    int j;
    int n;
    int k;

    //pre-condition
    i = 0;
    j = 0;
    assume(n == 1 || n == 2);

    //loop-body
    while(i <= k){
        i = i + 1;
        j = j + n;
    }

    //post-condition
    if(i > k && n == 1)
        assert(i == j);
        
}