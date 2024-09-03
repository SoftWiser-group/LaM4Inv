//svcomp_vnew2
int main(){
    unsigned int n;
    unsigned int j;
    unsigned int i;
    unsigned int k;

    //pre-condition
    i = 0;
    k = 0;
    j = 0;
    assume(n <= 20000001);

    //loop-body
    while (i < n) {
        i = i + 3;
        j = j + 3;
        k = k + 3;
    }

    //post-condition
    assert(k == j);
}