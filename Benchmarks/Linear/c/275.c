//svcomp_benchmark21_disjunctive
int main(){
    int x;
    int y;

    //pre-condition
    assume(y > 0 || x > 0);

    //loop-body
    while (x + y <= -2) {
        if (x > 0) {
            x++;
        } 
        else {
            y++;
        }
  }

    //post-condition
    assert(x > 0 || y > 0);
}