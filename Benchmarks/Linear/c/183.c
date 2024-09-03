//SyGuG2018_fib_43
int main(){
    int x;
    int y;
    int i;
    int t;

    //pre-condition
    i = 0;
    assume(x != y);
    assume(t == y);

    //loop-body
    while(x > 0){
        y = x + y;
    }

    //post-condition
    assert(y >= t);
        
}