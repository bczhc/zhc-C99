//
// Created by zhc on 2019/5/7.
//
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

#ifndef C99_ZHC_H
#define C99_ZHC_H

char *ToUpperCase(char *Dest, const char *string) {
    char *p = Dest;
    int len = strlen(string);
    char r[len + 1];
    int i = 0;
    while (1) {
        r[i] = (char) toupper((int) string[i]);
        if (string[i] == '\0') break;
        i++;
    }
    strcpy(p, r);
    return Dest;
}

int BinToDec(const char *NumStr) {
    int r = 0;
    int j = 0;
    for (int i = strlen(NumStr) - 1; i >= 0; --i) {
        r += (NumStr[i] == '0' ? 0 : 1) * pow((double) 2, (double) j);
        j++;
    }
    return r;
}

void printArr(const char *a, const int length) {
    int l = length;
    printf("[");
    for (int i = 0; i < l; ++i) {
        printf("%i", (int) a[i]);
        if (i != l - 1) {
            printf(",");
        }
    }
    printf("]\n");
}

char *substring(char *Dest, const char *source, const int beginIndex, const int endIndex) {
    char *r = Dest;
    strncpy(r, source + beginIndex, (size_t) (endIndex - beginIndex));
    return Dest;
}

long long getFileSize(FILE *fp) {
    long long sz;
    fseek(fp, 0L, SEEK_END);
    sz = (long long) ftell(fp);
    if (sz == -1) {
        sz = _ftelli64(fp);
    }
    fseek(fp, 0L, SEEK_SET);
    return sz;
}

int getIntegerLen(const int x) {
    int n = x;
    int r = 0;
    while (1) {
        int b = n / 10;
        r++;
        n = b;
        if (!b) break;
    }
    return r;
}

char *Scanf() {
    char c;
    char *s = NULL;
    int i = 1;
    while (1) {
        scanf("%c", &c);
        s = (char *) realloc(s, (size_t) i);
        if (c == 0x0A) {
            s[i - 1] = 0x0;
            break;
        }
        s[i - 1] = c;
        ++i;
    }
    return s;
}

char *addStr(const char *source, const char *addStr) {
    int sL = strlen(source), addS_s = strlen(addStr) + 1;
    char *r = (char *) malloc((size_t) (sL + addS_s));
    strcpy(r, source);
    strcat(r, addStr);
    return r;
}

char *charToCharPtr(const char c) {
    char *r = (char *) malloc((size_t) 2);
    r[0] = c;
    return r;
}

#endif //C99_ZHC_H