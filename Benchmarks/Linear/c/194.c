//SyGuG2018_jm2006_invariant_true-unreach-call_true-termination.sl
int main(){
    int i;
    int x;
    int y;
    int z;

    //pre-condition
    x = i;
    y = i;
    z = 0;
    assume(i >= 0);

    //loop-body
    while(x != 0){
        x = x - 1;
        y = y - 2;
        z = z + 1;
    }

    //post-condition
    assert(y == 0 - z);
    
}