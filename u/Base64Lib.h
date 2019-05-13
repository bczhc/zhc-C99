#include "../zhc.h"

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