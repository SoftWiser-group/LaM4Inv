//svcomp_iftelse
int main(){
    int n;
    int i;
    int k;
    int j;

    //pre-condition
    i = 0;
    j = 0;
    k = 0;
    assume(n <= 20000001);

    //loop-body
    while(i < n){	
		i = i + 3;
        if((i % 2) != 0)
            j = j + 3;
        else
            k = k + 3;
	}


    //post-condition
    if(n > 0)
        assert(i / 2 <= j);
}