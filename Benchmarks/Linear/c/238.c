//svcomp_simple_vardep_2
int main() {
    unsigned int i;
    unsigned int j;
    unsigned int k;

    //pre-condition
    i = 0;
    j = 0;
    k = 0;

    //loop-body
    while (k < 268435455) {
        i = i + 1;
        j = j + 2;
        k = k + 3;
    }

    //post-condition
    assert(k == 3 * i);
}