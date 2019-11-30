/*
 *
 * Chinese Academy of Sciences
 * State Key Laboratory of Information Security
 * Institute of Information Engineering
 *
 * Copyright (C) 2016 Chinese Academy of Sciences
 *
 * LuoPeng, luopeng@iie.ac.cn
 * Updated in May 2016
 *
 */

#include <stdio.h>

#include "aes.h"
#include "../Base64Lib.h"

int main(int argc, char *argv[]) {
    /* 128 bit key */
    uint8_t key[] = {
            //0x0f, 0x15, 0x71, 0xc9, 0x47, 0xd9, 0xe8, 0x59,
            //0x0c, 0xb7, 0xad, 0xd6, 0xaf, 0x7f, 0x67, 0x98,
            0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
            0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,

    };
    uint8_t roundKey[176];
    aes_key_schedule_128(key, roundKey);
    char *oP = "I love you!!!!!!";
    uint8_t plain[16];
    for (int j = 0; j < 16; ++j) {
        plain[j] = oP[j];
    }
    uint8_t c[16];
    aes_encrypt_128(roundKey, plain, c);
    for (int i = 0; i < 16; ++i) {
        printf("%i ", c[i]);
    }
    printf("%c", '\n');
    char *r = NULL;
    eD(&r, (char *) c, 16);
    for (int k = 0; k < 24; ++k) {
        printf("%c", r[k]);
    }
    printf("%c", '\n');

    FILE *fp = NULL, *fpO = NULL, *keyFP = NULL;
    if ((fpO = fopen("/home/zhc/Downloads/v.f30742.out.ts", "wb")) == NULL) {
        printf("fopen error");
        return 1;
    }
    if ((fp = fopen("/home/zhc/Downloads/v.f30742.ts", "rb")) == NULL) {
        printf("fopen error");
        return 1;
    }
    if ((keyFP = fopen("/home/zhc/Downloads/get_dk", "rb")) == NULL) {
        printf("fopen error");
        return 1;
    }
    fread(key, 16, 1, keyFP);
    aes_key_schedule_128(key, roundKey);
    dl size = getFileSize(fp), ct = size / 16;
    int more = size % 16;
    for (int l = 0; l < ct; ++l) {
        fread(plain, 16, 1, fp);
        aes_encrypt_128(roundKey, plain, c);
        fwrite(c, 16, 1, fpO);
    }
}