//svcomp_gauss_sum
int main(){
    int n;
    int sum;
    int i;

    //pre-condition
    assume(n >= 1);
    assume(n <= 1000);
    sum = 0;
    i = 0;

    //loop-body
    while (i < n) {
        sum = sum + i;
        i = i + 1;
    }

    //post-condition
    assert(2 * sum == n * (n - 1));
}
