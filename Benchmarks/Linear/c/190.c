//SyGuG2018_gsv2008_true-unreach-call_true-termination
int main(){
    int x;
    int y;

    //pre-condition
    x = -50;
    assume(y > -1000);
    assume(y < 1000);

    //loop-body
    while(x < 0){
        x = x + y;
        y = y + 1;
    }

    //post-condition
    assert(y > 0);
        
}