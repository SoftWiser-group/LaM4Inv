//svcomp_benchmark34_conjunctive
int main(){
    int i;
    int k;
    int n;

    //pre-condition
    i = 0;
    assume(n > 0);
    k = n;

    //loop-body
    while (i < n && n > 0) {
        k--;
        i++;
    }

    //post-condition
    assert(k == 0);
}