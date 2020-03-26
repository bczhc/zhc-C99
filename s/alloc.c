#include <stdlib.h>
#include <stdio.h>

int main(int argc, char **argv) {
	if (argc == 1) return 0;
	long n = atol(argv[1]);
	for(long i = 0; i < n; ++i) {
		malloc((size_t) 1024);
	}
}
