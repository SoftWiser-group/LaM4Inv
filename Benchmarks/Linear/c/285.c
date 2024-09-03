//svcomp_benchmark41_conjunctive
int main(){
    int x;
    int y;
    int z;

    //pre-condition
    x = 0;
    y = 0;
    z = 0;


    //loop-body
    while (x > 0) {
        x++;
        y++;
        z -= 2;
    }

    //post-condition
    assert(x + y + z == 0);
}