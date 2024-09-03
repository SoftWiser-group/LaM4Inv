//SyGuG2018_inria-00615623
int main(){
    int i;
    int b;
    int n;

    //pre-condition
    i = 0;
    assume(i < n);

    //loop-body
    while(i < n && b != 0){
        i = i + 1;
    }

    //post-condition
    if(i >= n)
        assert(i == n && b != 0);
        
}