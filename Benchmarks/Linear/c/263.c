//svcomp_half
int main(){
    int n;
    int k;
    int i;

    //pre-condition
    n = 0;
    i = 0;
    assume(k >= 0);
    assume(k <= 20000001);

    //loop-body
    while (i < 2 * k) {
        if(i % 2 == 0){
            n = n + 1;
        }
        i = i + 1;
    }

    //post-condition
    assert(n == k);
}
