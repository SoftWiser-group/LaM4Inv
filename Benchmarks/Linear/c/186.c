//SyGuG2018_fig2
int main(){
    int x;
    int y;
    int z;
    int w;

    //pre-condition
    x = 0;
    y = 0;
    z = 0;
    w = 0;

    //loop-body
    while(unknown()){
        if(x >= 4){
            x = x + 1;
            y = y + 3;
            z = z + 10;
            w = w + 10;
        }
        else if(x >= z && w > y){
            x = 0 - x;
            y = 0 - y;
        }
        else{
            x = x + 1;
            y = y + 2;
        }
    }

    //post-condition
    assert(3 * x >= y);
        
}