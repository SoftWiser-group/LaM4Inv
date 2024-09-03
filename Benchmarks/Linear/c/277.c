//svcomp_benchmark24_conjunctive
int main(){
    int i;
    int k;
    int n;

    //pre-condition
    i = 0;
    assume(n >= 0);
    assume(n <= 20000001);
    k = n;

    //loop-body
    while (i < n) {
        k--;
        i += 2;
    }

    //post-condition
    assert(2 * k >= n - 1);
}