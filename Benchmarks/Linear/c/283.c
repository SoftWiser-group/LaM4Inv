//svcomp_benchmark38_conjunctive
int main(){
    int x;
    int y;

    //pre-condition
    x = 0;
    y = 0;

    //loop-body
    while (unknown()) {
        x += 4;
        y++;
    }

    //post-condition
    assert(x == 4 * y);
}