//svcomp_mono-crafted_12
int main(){
    unsigned int x;
    unsigned int z;

    //pre-condition
    x = 0;
    z = 0;

    //loop-body
    while (x < 10000000) {
        if (x >= 5000000) {
            z = z + 2;
        } 
        x++;
    }

    //post-condition
    assert((z % 2) == 0);
}