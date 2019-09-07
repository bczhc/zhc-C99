//
// Created by root on 19-8-15.
//

#include "./Base64Lib.h"

// Created by zhc on 2019/5/11.
//
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

void d1(char *Dest, const char cArr[4]) {
    char *r = Dest;
    r[0] = (decodeTable[cArr[0]] << 2) | (decodeTable[cArr[1]] >> 4);
    r[1] = (decodeTable[cArr[1]] << 4) | (decodeTable[cArr[2]] >> 2);
    r[2] = (decodeTable[cArr[2]] << 6) | decodeTable[cArr[3]];
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

void eD(char **Dest, const char *s) {
    int a = strlen(s), b = a % 3, t = a / 3;
    size_t size = t * 4 + (b ? 4 : 0);
    *Dest = (char *) malloc(size);
    char r[4] = {0};
    for (int i = 0; i < t; ++i) {
        e1(r, s + 3 * i);
        for (int j = 0; j < 4; ++j) {
            printf("%c", r[j]);
            (*Dest)[i * 4 + j] = r[j];
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
            (*Dest)[size - 4 + k] = r[k];
        }
        for (int j = 0; j < 3 - b; ++j) {
            printf("%c", '=');
        }
        for (int l = size - 1; l > size - 1 - (3 - b); --l) {
            (*Dest)[l] = '=';
        }
    }
}

void dD(char **Dest, const char *s) {
    int a = strlen(s), t = a / 4;
    int eqMC = (s[a - 1] == '=') + (s[a - 2] == '=');
    int d = a - eqMC;
    int b = d / 4;
    char r[3] = {0};
    char c2S[] = {0, 0};
    if (eqMC) {
        for (int i = 0; i < b; ++i) {
            d1(r, s + 4 * i);
            for (int j = 0; j < 3; ++j) {
                c2S[0] = r[j];
                strcat_auto(Dest, c2S);
                printf("%c", r[j]);
            }
        }
        d1_EQ_M(r, s + b * 4, eqMC);
        for (int l = 0; l < 3 - eqMC; ++l) {
            c2S[0] = r[l];
            strcat_auto(Dest, c2S);
            printf("%c", r[l]);
        }
    } else {
        for (int i = 0; i < t; ++i) {
            d1(r, s + 4 * i);
            for (int j = 0; j < 3; ++j) {
                c2S[0] = r[j];
                strcat_auto(Dest, c2S);
                printf("%c", r[j]);
            }
        }
    }
}

void initDT() {
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

void eT_D() {

}

int e_1023P(char *Dest, char buf[READ_SIZE], int readSize) {
    int a = readSize / 3, b = readSize % 3;
    int g = b ? a + 1 : a;
    int rL = g * 4;
    char rB[3];
    for (int i = 0; i < g; ++i) {
        e1(Dest + 4 * i, buf + 3 * i);
    }
    if (b)
        for (int i = rL - 3 + b/*rL - (3 - b)*/; i < rL; ++i) {
            Dest[i] = '=';
        }
    return rL;
}

int d_1024P(char *Dest, const char buf[1024], const int readSize) {
    int a = readSize / 4, b = readSize % 4;
    int g = b ? a + 1 : a;
    int rL = g * 3;
    for (int i = 0; i < g; ++i) {
        d1(Dest + 3 * i, buf + 4 * i);
    }
    return rL;
}

int d_1024P_eqM(char *Dest, const char *buf, const int readSize, const int eqM_C) {
    return 0;
}