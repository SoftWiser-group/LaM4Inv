//SyGuG2018_cars
int main(){
    int x1;
    int x2;
    int x3;
    int v1;
    int v2;
    int v3;
    int t;

    //pre-condition
    x1 = 100;
    x2 = 75;
    x3 = -50;
    t = 0;
    assume(v3 >= 0);
    assume(v1 <= 5);
    assume((v1 - v3) >= 0);
    assume(v2 * 2 - v1 - v3 == 0);
    assume(v2 + 5 >= 0);
    assume(v2 <= 5);

    //loop-body
    while(v2 + 5 >= 0 && v2 <= 5){
        x1 = x1 + v1;
        x3 = x3 + v3;
        x2 = x2 + v2;
        if(x2 * 2 - x1 - x3 >= 0){
            v2 = v2 - 1;
            
        }
        else if(x2 * 2 - x1 - x3 <= 0){
            v2 = v2 + 1;
        }
        t = t + 1;
    }

    //post-confition
    assert(x2 + t * 5 >= 75);
}
