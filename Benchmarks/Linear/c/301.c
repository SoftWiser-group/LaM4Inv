//svcomp_loopv1
int main(){
    int n;
    int i;
    int j;

    //pre-condition
    i = 0;
    j = 0;
    assume(n <= 50000001);

    //loop-body
    while(i < n){	
        if(unknown())
            i = i + 6;
        else
            i = i + 3;
	}


    //post-condition
    assert(i % 3 == 0);
}