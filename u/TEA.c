//
// Created by zhc-2 on 2019/6/8.
//

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "../zhc.h"

char y_[] = {0xA5, 0x06, 0xB7, 0x89, 0x90, 0x67, 0xF7, 0x70};
int yes = 1;

void encrypt(uint32_t *v, uint32_t *k) {
    uint32_t v0 = v[0], v1 = v[1], sum = 0, i;
    uint32_t delta = 0x9e3779b9;
    uint32_t k0 = k[0], k1 = k[1], k2 = k[2], k3 = k[3];
    for (i = 0; i < 32; i++) {
        sum += delta;
        v0 += ((v1 << 4) + k0) ^ (v1 + sum) ^ ((v1 >> 5) + k1);
        v1 += ((v0 << 4) + k2) ^ (v0 + sum) ^ ((v0 >> 5) + k3);
    }
    v[0] = v0;
    v[1] = v1;
}

//解密函数
void decrypt(uint32_t *v, uint32_t *k) {
    uint32_t v0 = v[0], v1 = v[1], sum = 0xC6EF3720, i;
    uint32_t delta = 0x9e3779b9;
    uint32_t k0 = k[0], k1 = k[1], k2 = k[2], k3 = k[3];
    for (i = 0; i < 32; i++) {
        v1 -= ((v0 << 4) + k2) ^ (v0 + sum) ^ ((v0 >> 5) + k3);
        v0 -= ((v1 << 4) + k0) ^ (v1 + sum) ^ ((v1 >> 5) + k1);
        sum -= delta;
    }
    v[0] = v0;
    v[1] = v1;
}

/*//加密函数


int main()
{
    uint32_t v[2]={1234567890,1234567891},k[4]={1,2,3,4};
    // v为要加密的数据是两个32位无符号整数
    // k为加密解密密钥，为4  个32位无符号整数，即密钥长度为128位
    printf("加密前原始数据：%u %u\n",v[0],v[1]);
    encrypt(v, k);
    printf("加密后的数据：%u %u\n",v[0],v[1]);
    decrypt(v, k);
    printf("解密后的数据：%u %u\n",v[0],v[1]);
    return 0;
}
*//*
---------------------
作者：xys430381_1
        来源：CSDN
        原文：https://blog.csdn.net/xys430381_1/article/details/86243989
版权声明：本文为博主原创文章，转载请附上博文链接！*/


void TEA_Enc(char *Dest, const char buf[8], const char key[16]) {
    char *r = Dest;
    uint32_t delta = 0x9E3779B9, sum = 0;
    for (int i = 0; i < 32; ++i) {
    }
}

uint32_t Hex2Dec(const char *s) {
    uint32_t r = 0U;
    int strLen = strlen(s);
    for (int i = strLen - 1; i >= 0; --i) {
        r += m_pow(16LL, (long long) strLen - i - 1) * (s[i] <= 57 && s[i] >= 48 ? s[i] - 48 : s[i] - 87);
    }
    return r;
}

int main() {
    char c[8] = {0x66, 0x4c, 0x61, 0x43, 0x00, 0, 0, 0x22};
    uint32_t v[2] = {0};
    for (int k = 0; k < 0xFFFFFFFF; ++k) {
        for (int m = 0; m < 0xFFFFFFFF; ++m) {
            for (int n = 0; n < 0xFFFFFFFF; ++n) {
                for (int l = 0; l < 0xFFFFFFFF; ++l) {
                    printf("%i %i %i %i\t", k, m, n, l);
                    uint32_t k_[4] = {0};
                    k_[0] = k;
                    k_[1] = m;
                    k_[2] = n;
                    k_[3] = l;
                    char s[17] = {0};
                    for (int i = 0; i < 8; ++i) {
                        char itoaR[3];
                        itoa((unsigned char) c[i], itoaR, 16);
                        if (strlen(itoaR) == 1) {
                            strcat(s, "0");
                        }
                        strcat(s, itoaR);
                    }
                    char h_0[9] = {0};
                    strncpy(h_0, s, 8);
                    char *h_1 = s + 8;
                    v[0] = Hex2Dec(h_0);
                    v[1] = Hex2Dec(h_1);
                    encrypt(v, k_);
//                    printf("%u\n", v[0]);
//                    printf("%u\n\n", v[1]);
                    char r_HexStr[17] = {0};
                    itoa(v[0], r_HexStr, 16);
                    itoa(v[1], r_HexStr + 8, 16);
//                    printf("%s\n", r_HexStr);
                    int r_HexStr_Len = strlen(r_HexStr);
                    char rC[8];
                    for (int j = 0; j < r_HexStr_Len - 1; j += 2) {
                        char r_c =
                                (char) (r_HexStr[j] <= 57 && r_HexStr[j] >= 48 ? r_HexStr[j] - 48 : r_HexStr[j] - 87) *
                                16
                                + (r_HexStr[j + 1] <= 57 && r_HexStr[j + 1] >= 48 ? r_HexStr[j + 1] - 48 :
                                   r_HexStr[j + 1] - 87);
                        rC[j] = r_c;
                        printf("%c", r_c);
                        if (r_c != y_[j]) {
                            yes = 0;
                        }
                    }
                    printf("\n");
                    if (yes) {
                        printf("ok\n%i %i %i %i", k_[0], k_[1], k_[2], k_[3]);
                        return 0;
                    } else yes = 1;
                }
            }
        }
    }
    return 0;
}