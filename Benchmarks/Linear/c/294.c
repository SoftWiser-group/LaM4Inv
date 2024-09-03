//svcomp_benchmark50_linear
int main(){
    int xa;
    int ya;

    //pre-condition
    assume(xa + ya > 0);

    //loop-body
    while (xa > 0) {
        xa--;
        ya++;
    }

    //post-condition
    assert(ya >= 0);
}