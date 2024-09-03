//SyGuG2018_mirror1
int main(){
    int x;

    //pre-condition
    assume(x <= -2);
    assume(x >= -3);

    //loop-body
    while(unknown()){
        if(x < 1){
            x = x + 2;
        }
        else if(x >= 1){
            x = x + 1;
        }
    }

    //post-condition
    assert(x >= -5);
    
}