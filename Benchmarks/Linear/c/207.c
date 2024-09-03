//SyGuG2018_terminator_03_true-unreach-call_true-termination
int main(){
    int x;
    int y;

    //pre-condition
    assume(y <= 1000000);

    //loop-body
    while(x < 100 && y > 0){
        x = x + y;
    }

    //post-condition
    if(y <= 0 || (y > 0 && x >= 100))
        assert(y <= 0 || (x >= 100 && y > 0));
    
}