//
// Created by root on 5/29/19.
//

#include <stdio.h>

long long getFileSize(FILE *fp) {
    long long sz;
    fseek(fp, 0L, SEEK_END);
    sz = (long long) ftell(fp);
    if (sz == -1) {
//        sz = _ftelli64(fp);
    }
    fseek(fp, 0L, SEEK_SET);
    return sz;
}

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *fp;
        if ((fp = fopen(argv[1], "rb")) == NULL) {
            printf("open file failed.\n");
            return -1;
        } else {
            long long s = getFileSize(fp);
            printf("%lld\n", s);
        }
    }
}