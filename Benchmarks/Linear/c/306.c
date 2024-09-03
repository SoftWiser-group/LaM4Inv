//svcomp_sumt2
int main(){
    unsigned int n;
    unsigned int j;
    unsigned int i;
    unsigned int l;

    //pre-condition
    i = 0;
    j = 0;
    l = 0;
    assume(n <= 20000001);

    //loop-body
    while (l < n) {
        if ((l % 2) == 0) {
            i = i + 1;
        }
        else{
            j = j + 1;
        }
        l = l + 1;
    }

    //post-condition
    assert((i + j) == l);
}