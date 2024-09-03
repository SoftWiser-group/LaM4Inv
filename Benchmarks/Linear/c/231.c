//svcomp_phases_1-2
int main() {
    unsigned int x;

    //pre-condition
    x = 0;

    //loop-body
    while (x < 268435455) {
        if (x < 65521) {
            x++;
        } 
        else {
            x += 2;
        }

    }

    //post-condition
    assert((x % 2) == 1);

}