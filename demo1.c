#include <stdlib.h>

int main() {
    size_t  size = (size_t) 1024;
    while (1) {
        malloc(size);
    }
    return 0;
}