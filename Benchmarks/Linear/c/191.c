//SyGuG2018_hhk2008_true-unreach-call_true-termination
int main(){
    int a;
    int b;
    int res;
    int cnt;

    //pre-condition
    res = a;
    cnt = b;
    assume(a <= 1000000);
    assume(b >= 0);
    assume(b <= 1000000);

    //loop-body
    while(cnt > 0){
        cnt = cnt - 1;
        res = res + 1;
    }

    //post-condition
    assert(res == a + b);
        
}