//Cauchy-Buniakowsky-Schwarz
int main() {
    // variable declarations
	int x, y, z, w, p, n;

    //precondition
	assume(x >= 0);
	assume(y >= 0);
	assume(n >= 0);
    assume(z == 0);
    assume(w == 0);
    assume(p == 0);
    // loop body
	while(n > 0) {
		z = z + x * x;
		w = w + y * y;
		p = p + x * y;
		n -= 1;
	}
    // post-condition
	assert(z * w >= p * p);
}
