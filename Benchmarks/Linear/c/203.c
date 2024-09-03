//SyGuG2018_mirror2
int main(){
    int x;
    int y;

    //pre-condition
    assume(x <= 1);
    assume(x >= 0);
    y = -3;
    //loop-body
    while(unknown()){
        if(x - y < 2){
            x = x - 1;
            y = y + 2;
        }
        else if(x - y >= 2){
            y = y + 1;
        }
    }

    //post-condition
    assert(x <= 1);
    
}