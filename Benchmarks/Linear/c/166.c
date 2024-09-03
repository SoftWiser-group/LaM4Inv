//SyGuG2018_fib_20
int main(){
    int x;
    int y;
    int k;
    int j;
    int i;
    int n;
    int m;

    //pre-condition
    m = 0;
    j = 0;
    assume((x + y) == k);

    //loop-body
    while(j < n){
        if(j == i){
            x = x + 1;
            y = y - 1;
            j = j + 1;
            if(unkown()){
                m = j;
            }
        }
        else if(j != i){
            x = x - 1;
            y = y + 1;
            j = j + 1;
            if(unkown()){
                m = j;
            }
        }

    }

    //post-condition
    if(j >= n)
        assert((x + y) == k);
}