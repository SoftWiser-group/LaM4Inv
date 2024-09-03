//SyGuG2018_underapprox_true-unreach-call2_true-termination
int main(){
    int x;

    //pre-condition
    x = 0;

    //loop-body
    while(x < 6){
        x = x + 1;
    }

    //post-condition
    assert(x == 6);
    
}