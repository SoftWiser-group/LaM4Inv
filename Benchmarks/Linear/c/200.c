//SyGuG2018_jmbl_trex3_vars
int main(){
    int x1;
    int x2;
    int x3;
    int d1;
    int d2;
    int d3;

    //pre-condition
    d1 = 1;
    d2 = 1;
    d2 = 1;

    //loop-body
    while(x1 > 0 && x2 > 0 && x3 > 0){
        if(unknown()){
            x1 = x1 - d1;
        }
        if(unknown()){
            x2 = x2 - d2;
        }
        if(unknown()){
            x3 = x3 - d3;
        }
    }

    //post-condition
    assert(x1 < 0 || x2 < 0 || x3 < 0 || x1 == 0 || x2 == 0 || x3 == 0);
    
}