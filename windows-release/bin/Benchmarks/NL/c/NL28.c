int main() {
    // variable declarations
	int x, y, z, w, p;

    //precondition
	assume(x >= 0 && y >= x);
    assume(z == 0);
    assume(w == 0);
    assume(p == 0);
    // loop body
	while(w < y) {
		z += x;
		p += z;
		w += 1;
	}
    // post-condition
	assert(p == x * (1 + y) * y / 2);

	return 0;
}
