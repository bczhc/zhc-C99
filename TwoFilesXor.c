//
// Created by zhc-2 on 2019/6/20.
//
#include "zhc.h"

int main(const int argc, char **argv) {
    if (argc != 4) return 1;
    char *f1 = argv[1];
    char *f2 = argv[2];
    char *dF = argv[3];
    FILE *fp1, *fp2, *fpO;
    if ((fp1 = fopen(f1, "rb")) == NULL) {
        printf("1.fopen error\n");
        return -1;
    }
    if ((fp2 = fopen(f2, "rb")) == NULL) {
        printf("2.fopen error\n");
        return -1;
    }
    if ((fpO = fopen(dF, "wb")) == NULL) {
        printf("3.fopen error\n");
        return -1;
    }
    dl f1L = getFileSize(fp1), f2L = getFileSize(fp2);
    dl dL = f1L > f2L ? f1L : f2L;
    dl a = dL / 1024LL;
    usi b = dL % 1024U;
    char buf1[1024], buf2[1024], r[1024];
    for (int i = 0; i < a; ++i) {
        fread(buf1, 1024, 1, fp1);
        fread(buf2, 1024, 1, fp2);
        for (int j = 0; j < 1024; ++j) {
            r[j] = buf1[j] ^ buf2[j];
        }
        fwrite(r, 1024, 1, fpO);
    }
    if (b) {
        fread(buf1, b, 1, fp1);
        fread(buf2, b, 1, fp2);
        for (int j = 0; j < b; ++j) {
            r[j] = buf1[j] ^ buf2[j];
        }
        fwrite(r, b, 1, fpO);
    }
}