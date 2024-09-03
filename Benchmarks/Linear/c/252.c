//svcomp_ddlm2013
int main(){
    int i;
    int j;
    int a;
    int b;

    //pre-condition
    a = 0;
    b = 0;
    j = 1;
    i = 0;

    //loop-body
    while (unknown()) {
        a = a + 1;
        b = b + j - i;
        i = i + 2;
        if (i % 2 == 0){
            j = j + 2;
        } 
        else{
            j = j + 1;
        }
    }
    
    //post-condition
    assert(a == b);

}
