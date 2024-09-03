//SyGuG2018_terminator_02_true-unreach-call_true-termination
int main(){
    int x;
    int z;

    //pre-condition
    assume(x > -100);
    assume(x < 200);
    assume(z > 100);
    assume(z < 200);

    //loop-body
    while(x < 100 && z > 100){
        if(unknown()){
            x = x + 1;
        }
        else{
            x = x - 1;
            z = z - 1;
        }
    }

    //post-condition
    assert((x < 100 && z > 100) || x >= 100 || z <=100);
    
}