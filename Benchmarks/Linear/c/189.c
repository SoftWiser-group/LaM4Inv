//SyGuG2018_gj2007_true-unreach-call_true-termination
int main(){
    int x;
    int y;

    //pre-condition
    x = 0;
    y = 50;

    //loop-body
    while(x < 100){
        if(x < 50){
            x = x + 1;
        }
        else{
            x = x + 1;
            y = y + 1;
        }
    }

    //post-condition
    assert(y == 100);
        
}