//svcomp_loop2-1
int main() {
    float x;
	float octant;
	float oddExp;
	float evenExp;
	float term;
	unsigned int count;
	int multFactor;
	int temp;

    //pre-condition
    octant = 3.14159 / 3;
    assume(x > 0);
    assume(x < octant);
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