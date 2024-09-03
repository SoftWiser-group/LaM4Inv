//svcomp_benchmark42_conjunctive
int main(){
    int x;
    int y;
    int z;

    //pre-condition
    assume(x == y);
    assume(x >= 0);
    assume(x + y + z == 0);

    //loop-body
    while (x > 0) {
        x--;
        y--;
        z += 2;
    }

    //post-condition
    assert(z <= 0);
}