//svcomp_Mono6_1
int main(){
    int x;
    int z;

    //pre-condition
    x = 0;
    z = 5000000;

    //loop-body
    while(x < 10000000){	
		if(x >= 5000000)
			z++;
		x++;
	}


    //post-condition
    assert(z == x);
}