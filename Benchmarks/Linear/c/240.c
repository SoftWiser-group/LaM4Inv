//svcomp_loop1-1
int main() {
    float x;
    float exp;
    float term;
    float result;
    unsigned int count;

    //pre-condition
    assume(x > -1.0);
    assume(x < 1.0);
    exp = 1.0;
    term = 1.0;
    count = 1;
    result = 2 * (1 / (1 - x));

    //loop-body
    while(unknown()){
        term = term * (x / count) ; 
		exp = exp + term ;
		count++ ;
    }

    //post-condition
    assert(result >= exp);
}