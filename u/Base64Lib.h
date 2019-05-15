#include "../zhc.h"
#include <pthread.h>

#define READ_SIZE 1023

// Created by zhc on 2019/5/11.
//
#ifndef C99_BASE64LIB_H
#define C99_BASE64LIB_H
#endif //C99_BASE64LIB_H
char encodeTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
//  char encodeTable[] = "1029384756<>qpwoeirutyalskdjfhgmznxbcv!@#$%^&*()_+/~`,.?\"\';:Ab";
char decodeTable[128] = {0};

char *e1(char *Dest, const char cArr[3]) {
    char *r = Dest;
    r[0] = encodeTable[(cArr[0] & 255) >> 2];
    r[1] = encodeTable[(((cArr[0] & 255) & 3) << 4) | ((cArr[1] & 255) >> 4)];
    r[2] = encodeTable[(((cArr[1] & 255) & 15) << 2) | ((cArr[2] & 255) >> 6)];
    r[3] = encodeTable[(cArr[2] & 255) & 63];
    return Dest;
}

char *d1(char *Dest, const char cArr[4]) {
    char *r = Dest;
    r[0] = (decodeTable[cArr[0]] << 2) | (decodeTable[cArr[1]] >> 4);
    r[1] = (decodeTable[cArr[1]] << 4) | (decodeTable[cArr[2]] >> 2);
    r[2] = (decodeTable[cArr[2]] << 6) | decodeTable[cArr[3]];
    return r;
}

char *d1_EQ_M(char *Dest, const char cArr[4], int eqM_C) {
    char *r = Dest;
    if (eqM_C == 2) {
        r[0] = (decodeTable[cArr[0]] << 2) | (decodeTable[cArr[1]] >> 4);
        return r;
    } else {
        r[0] = (decodeTable[cArr[0]] << 2) | (decodeTable[cArr[1]] >> 4);
        r[1] = (decodeTable[cArr[1]] << 4) | (decodeTable[cArr[2]] >> 2);
        return r;
    }
}

void eD(char *s) {
    int a = strlen(s), b = a % 3, t = a / 3;
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

/*
 * File encode method _old
FILE *fp = NULL, *fpO = NULL;
if ((fp = fopen(argv[2], "rb")) == NULL) return -1;
char oN[strlen(argv[2]) + 14];
strcpy(oN, argv[2]);
strcat(oN, ".Base64.O.txt");
if ((fpO = fopen(oN, "wb")) == NULL) return -1;
dl fS = getFileSize(fp);
printf("%s", "Encoding...\n");
dl a = fS / 3LL;
usi b = (usi) (fS % 3LL);
char r[3] = {0}, R[4] = {0};
for (dl i = 0; i < a; ++i) {
fread(r, 3, 1, fp);
e1(R, r);
fwrite(R, 4, 1, fpO);
}
if (b) {
fread(r, b, 1, fp);
e1(R, r);
for (int i = b + 1; i < 4; ++i) {
R[i] = '=';
}
fwrite(R, 4, 1, fpO);
}*/


/*File decode method _old
 * FILE *fp = NULL, *fpO = NULL;
if ((fp = fopen(argv[2], "rb")) == NULL) return -1;
char oN[strlen(argv[2]) + 14];
strcpy(oN, argv[2]);
strcat(oN, ".Base64.O.txt");
if ((fpO = fopen(oN, "wb")) == NULL) return -1;
dl fS = getFileSize(fp);
printf("%s", "Decoding...\n");
dl a = fS / 4LL;
usi b = (usi) (fS % 3LL);
char r[4] = {0}, R[3] = {0};
for (dl i = 0; i < a; i++) {
fread(r, 4, 1, fp);
d1(r, R);
fwrite(R, 3, 1, fpO);
}
if (b) {
fread(r, b, 1, fp);
int eqMC = (r[b - 1] == '=') + (r[b - 2] == '=');
d1_EQ_M(R, r, eqMC);
fwrite(R, 3 - eqMC, 1, fpO);
}*/

void eT_D() {
    
}

void e_1023P(char buf[READ_SIZE], int readSize, int g) {
    int a = READ_SIZE / g, b = a % g, lastE_L = a + b, d = a / 3, e = a % 3;
    char r[e ? (readSize / 3 * 4 + 1) : (readSize / 3 * 4)];
    char *perGroupBuf[g - 1];
    printf("readSize: %d\n"
           "r.length: %d\n", readSize, e ? (readSize / 3 * 4 + 1) : (readSize / 3 * 4));
    for (int i = 0; i < g - 1; ++i) {
        substr(&(perGroupBuf[i]), buf, i * a, (i + 1) * a);
    }
    pthread_t t[g - 1];
    
}