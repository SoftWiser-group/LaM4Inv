//svcomp_benchmark04_conjunctive
int main(){
    int k;
    int j;
    int n;

    //pre-condition
    assume(n >= 1); 
    assume(k >= n); 
    j = 0; 

    //loop-body
    while (j <= n - 1) {
        j = j + 1;
        k = k - 1;
    }

    //post-condition
    assert(k >= 0);
}
