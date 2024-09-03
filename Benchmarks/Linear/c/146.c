//SyGuG2018_const_true-unreach-call1
int main(){
    int x;
    int y;
    
    //pre-condition
    x = 1;
    y = 0;

    //loop-body
    while(y < 1024){
        x = 0;
        y = y + 1;
    }

    //post-condition
    assert(x == 0);
    
}