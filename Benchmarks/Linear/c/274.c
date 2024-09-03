//svcomp_benchmark17_conjunctive
int main(){
    int i;
    int k;
    int n;

    //pre-condition
    i = 0;
    k = 0;

    //loop-body
    while (i < n) {
        i = i + 1;
        k = k + 1;
    }

    //post-condition
    assert(k >= n);
}