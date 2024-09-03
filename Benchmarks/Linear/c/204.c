//SyGuG2018_mirror3
int main(){
    int x;
    int y;

    //pre-condition
    assume(x <= 5);
    assume(x >= 4);
    assume(y <= 5);
    assume(y >= 4);
    //loop-body
    while(unknown()){
        if(x >= 0 && y >= 0){
            x = x - 1;
        }
        else if(x < 0 && y >= 0){
            y = y - 1;
        }
        else if(y < 0){
            x = x + 1;
            y = y - 1;
        }
    }

    //post-condition
    assert(y <= 5);
    
}