//SyGuG2018_multivar_true-unreach-call1_true-termination
int main(){
    int x;
    int y;

    //pre-condition
    y = x;

    //loop-body
    while(x < 1024){
        x = x + 1;
        y = y + 1;
    }

    //post-condition
    assert(x == y);
    
}