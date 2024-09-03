//svcomp_loop3
int main() {
    float x;
	float octant1;
    float octant2;
	float oddExp;
	float evenExp;
	float term;
	unsigned int count;
	int multFactor;
	int temp;

    //pre-condition
    octant1 = 0;
    octant2 = 3.14159 / 8;
    assume(x > octant1);
    assume(x < octant2);
    oddExp = x;
    evenExp = 1.0;
    term = x;
    count = 2;
    multFactor = 0;

    //loop-body 
	while(unknown()){
		term = term * (x / count);
		
        if((count / 2) % 2 == 0)
            multFactor = 1;
        else
            multFactor = -1;

		evenExp = evenExp + multFactor * term;

		count = count + 1;

		term = term * (x / count);		
		
		oddExp = oddExp + multFactor * term;
		
		count = count + 1;
	}

    //post-condition
	assert(oddExp >= evenExp);
}	