//svcomp_mono-crafted_6
int main(){
    int x;

    //pre-condition
    x = 0;

    //loop-body
    while (x < 1000000) {
        if (x < 750000) {
            x++;
        }
        else{
            x = x + 2;
        }
    }

    //post-condition
    assert(x == 1000000);
}