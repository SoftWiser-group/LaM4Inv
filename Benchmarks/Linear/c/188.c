//SyGuG2018_gcnr_tacas08
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
            y = y + 2;
            
        }
        else if(y > 10 * w && z >= 100 * x){
            y = 0 - y;
        }
        else{
            x = x + 1;
            y = y + 100;
        }
        w = w + 1;
        z = z + 10;
    }

    //post-condition
    if(y <= 2)
        assert(x < 4);
        
}