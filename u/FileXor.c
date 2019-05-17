#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

#define ARR_len(x) sizeof(x) / sizeof(x)[0]

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

int FileDoXor(FILE *fpI, FILE *fpO, char key[]) {
    char *key_ = key;
    if (fpI == NULL || fpO == NULL) {
        return 1;
    }
    long long fileSize = getFileSize(fpI);
    long long a = fileSize / 1024LL;
    long long b = fileSize % 1024LL;
    long keyLen = ARR_len(key_);
    char t[1024] = {};
    for (int i = 0; i < a; ++i) {
        fread(t, 1024, 1, fpI);
        for (int j = 0; j < 1024; ++j) {
            t[i] ^= key_[j % keyLen];
        }
        fwrite(t, 1024, 1, fpO);
    }
    if (b != 0) {
        fread(t, b, 1, fpI);
        for (int i = 0; i < b; ++i) {
            t[i] ^= key_[i % keyLen];
        }
        fwrite(t, b, 1, fpO);
    }
    return 0;
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


char *StringParseCharMEM(char *Dest, const char *string) {
    char *r__ = Dest;
    char s[strlen(string) + 1];
    strcpy(s, string);
    int sLen = strlen(s);
    int dotC = 0;
    char t[sLen][4];
    for (int j = 0; j < sLen; ++j) {
        for (int i = 0; i < 4; ++i) {
            t[j][i] = 0;
        }
    }
    int i_ = 0;
    for (int i = 0; i < sLen; ++i) {
        if (s[i] == ',') {
            ++dotC;
            i_ = 0;
        } else if (s[i] != ' ' && s[i] != 0x20) {
            t[dotC][i_] = s[i];
            i_++;
        }
    }
    char r_[dotC + 2];
    int j_l = dotC + 1;
    for (int j = 0; j < j_l; ++j) {
        int r = atoi(t[j]);
        r_[j] = r;
    }
    memcpy(r__, r_, dotC + 1);
    return Dest;
}

int main(int argc, char *argv[]) {
    if (argc != 4 && argc != 5) {
        printf("FileDoXor\n"
               "Command [[filePath]] [[DestFilePath]] [-keyText [string]]|\n"
               "Command [[filePath]] [-keyBytes [bytes]]\n");
        return 'P';
    }
    char fileName[strlen(argv[1]) + 1];
    char DestFileName[strlen(argv[2]) + 1];
    strcpy(fileName, argv[1]);
    strcpy(DestFileName, argv[2]);
    if (argc == 5) {
         * fileName 1
         * DestFileName 2
         * kM 3
         * keyContent 4
         

        char k[strlen(argv[4]) + 1];
        char kM[9] = {""};
        strcpy(kM, argv[3]);
        FILE *f1 = fopen(fileName, "rb");
        FILE *f2 = fopen(DestFileName, "wb");
        int dotC = 0;
        int i_l = strlen(k);
        for (int i = 0; i < i_l; ++i) {
            if (k[i] == ',') ++dotC;
        }
        char key[dotC + 1];
        char kMT[9] = {""};
        ToUpperCase(kMT, kM);
        if (strcmp(kMT, "-KEYBYTES")) {
            StringParseCharMEM(key, k);
        }
        printf("key: ");
        printArr(key, ARR_len(key));
        printf("\n");
        FileDoXor(f1, f2, key);
    }
    return 0;
}
