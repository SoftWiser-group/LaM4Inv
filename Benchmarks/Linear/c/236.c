//svcomp_simple_4-2
int main() {
    unsigned int x;

    //pre-condition
    x = 268435440;

    //loop-body
    while (x > 0) {
        x -= 2;
    }

    //post-condition
    assert(x % 2 == 0);

}