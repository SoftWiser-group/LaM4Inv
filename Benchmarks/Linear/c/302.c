//svcomp_loopv3
int main(){
    int i;
    int j;

    //pre-condition
    i = 0;

    //loop-body
    while(i < 50000001){	
        if(unknown())
            i = i + 8;
        else
            i = i + 4;
	}

    //post-condition
    if(j == (i / 4))
        assert((j * 4) == i);
}