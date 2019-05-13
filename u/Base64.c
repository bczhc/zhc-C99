#include "Base64Lib.h"
#include <pthread.h>

//#define F_COUNT_SIZE 1
//
// Created by zhc on 2019/5/11.
//

void eD(char *s) {
    int a = strlen(s), b = a % 3, t = a / 3;
    printf("length: %i\n", a);
    char r[4] = {0};
    for (int i = 0; i < t; ++i) {
        e1(r, s + 3 * i);
        for (int j = 0; j < 4; ++j) {
            printf("%c", r[j]);
        }
    }
    if (b) {
        char n[3] = {0};
        for (int i = 0; i < b; ++i) {
            n[i] = s[3 * t + i];
        }
        e1(r, n);
        for (int k = 0; k < b + 1; ++k) {
            printf("%c", r[k]);
        }
        for (int j = 0; j < 3 - b; ++j) {
            printf("%c", '=');
        }
    }
}

void dD(char *s) {
    int a = strlen(s), t = a / 4;
    int eqMC = (s[a - 1] == '=') + (s[a - 2] == '=');
    int d = a - eqMC;
    int b = d / 4;
    char r[3] = {0};
    if (eqMC) {
        for (int i = 0; i < b; ++i) {
            d1(r, s + 4 * i);
            for (int j = 0; j < 3; ++j) {
                printf("%c", r[j]);
            }
        }

        d1_EQ_M(r, s + b * 4, eqMC);
        for (int l = 0; l < 3 - eqMC; ++l) {
            printf("%c", r[l]);
        }
    } else {
        for (int i = 0; i < t; ++i) {
            d1(r, s + 4 * i);
            for (int j = 0; j < 3; ++j) {
                printf("%c", r[j]);
            }
        }
    }
//    if (b) {
//        int eMC = 0;
//        if (s[a-1] ==)
//    }
}

void sDT() {
    for (int i = 65; i < 91; ++i) {
        decodeTable[i] = i - 65;
    }
    for (int j = 97; j < 123; ++j) {
        decodeTable[j] = j - 71;
    }
    for (int k = 48; k < 59; ++k) {
        decodeTable[k] = k + 4;
    }
    decodeTable['+'] = 62;
    decodeTable['/'] = 63;
}

int main(int argc, char *argv[]) {
//    argc = 3;
    /*char *f = "C:\\Users\\zhc\\Downloads\\a.txt";
    char *fO = "C:\\Users\\zhc\\Downloads\\o.txt";
    FILE *fp = NULL;
    FILE *fpO = NULL;
    if ((fp = fopen(f, "rb")) == NULL) return -1;
    if ((fpO = fopen(fO, "wb")) == NULL) return -1;
    pthread_t t[4] = {(pthread_t) NULL};
//    long long fS = getFileSize()
    __int64 fS = getFileSize(fp);

    char r[12] = {0};
    fread(r, 12, F_COUNT_SIZE, fp);
    PrintArr(r, ARR_len(r));*/
    if (argc <= 1) return 0;
    if (argc == 2) {
        eD(argv[1]);
        return 0;
    } else if (argc == 3) {
        if (Str_Cmp_nMatchCase(argv[1], "-decode")) {
            sDT();
            dD(argv[2]);
        } else {
            eD(argv[2]);
        }
    }
    return 0;
}