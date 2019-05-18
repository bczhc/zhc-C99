//
// Created by zhc on 2019/5/3.
//

#include <io.h>
#include <time.h>
#include <pthread.h>
#include <synchapi.h>
#include "../zhc.h"

#ifndef C99_A_H
#define C99_A_H
#endif //C99_A_H
static int DivideR_len = 0;
static char DivideR[8][9] = {{""}};


int IntegerLen(const int x) {
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

char *NewFileName(char *Dest, const char *filePath) {
    char *r = Dest;
    char newFN[strlen(filePath) + 5];
    int x = 2;
    while (1) {
        char xS[IntegerLen(x) + 1];
        itoa(x, xS, 10);
        strcpy(newFN, filePath);
        strcat(newFN, " (");
        strcat(newFN, xS);
        strcat(newFN, ")");
        if (access(newFN, F_OK) == EOF) break;
        x++;
    }
    strcpy(r, newFN);
    return Dest;
}


char *NumStr_lenTo(char *Dest, const char *source, const int len_to) {
    char *r = Dest;
    char s[len_to + 1];
    strcpy(s, "");
    for (int i = 0; i < len_to - strlen(source); ++i) {
        strcat(s, "0");
    }
    strcat(s, source);
    strcpy(r, s);
    return r;
}


int String_56_DivideInto(const char *source, const int per_char_split__7_or_8) {
    int source_l = strlen(source);
    if (source_l != 56 && source_l != 57) return 1;
    DivideR_len = 56 / per_char_split__7_or_8;
    for (int i = 0; i < DivideR_len; ++i) {
        substring(DivideR[i], source, per_char_split__7_or_8 * i, per_char_split__7_or_8 * (i + 1));
    }
    return 0;
}

/*void printArr(const char *a, const int length) {
    int l = length;
    printf("[");
    for (int i = 0; i < l; ++i) {
        printf("%i", (int) a[i]);
        if (i != l - 1) {
            printf(",");
        }
    }
    printf("]\n");
}*/
#define ERS 1029
#define DRS 1176

void e1(char *Dest, const char buf[7]) {
    Dest[0] = (buf[0] & 255) >> 1;
    Dest[1] = ((buf[0] & 1) << 6) | ((buf[1] & 255) >> 2);
    Dest[2] = ((buf[1] & 3) << 5) | ((buf[2] & 255) >> 3);
    Dest[3] = ((buf[2] & 7) << 4) | ((buf[3] & 255) >> 4);
    Dest[4] = ((buf[3] & 15) << 3) | ((buf[4] & 255) >> 5);
    Dest[5] = ((buf[4] & 31) << 2) | ((buf[5] & 255) >> 6);
    Dest[6] = ((buf[5] & 63) << 1) | ((buf[6] & 255) >> 7);
    Dest[7] = buf[6] & 127;
}

void d1(char *Dest, const char buf[8]) {
    Dest[0] = (char) ((buf[0] & 255) << 1) | ((buf[1] & 255) >> 6);
    Dest[1] = (char) ((buf[1] & 255) << 2) | ((buf[2] & 255) >> 5);
    Dest[2] = (char) ((buf[2] & 255) << 3) | ((buf[3] & 255) >> 4);
    Dest[3] = (char) ((buf[3] & 255) << 4) | ((buf[4] & 255) >> 3);
    Dest[4] = (char) ((buf[4] & 255) << 5) | ((buf[5] & 255) >> 2);
    Dest[5] = (char) ((buf[5] & 255) << 6) | ((buf[6] & 255) >> 1);
    Dest[6] = (char) ((buf[6] & 255) << 7) | (buf[7] & 255);
}

int e_1029P(char *Dest, const char buf[ERS], int readSize) {
    int a = readSize / 7, b = readSize % 7, g = b ? a + 1 : a, rL = g * 8;
    char rB[7] = {0};
    for (int i = 0; i < g; ++i) {
        substr2(rB, buf, 7 * i, 7);
        e1(Dest + 8 * i, rB);
    }
    return rL;
}

int d_1029P(char *Dest, const char buf[DRS], int readSize) {

}
char t_b[4][1029] = {{0}};
char t_e_r[4][DRS] = {{0}};

void *T_fun(void *arg) {
    int i = *((int *) arg);//????
    e_1029P(t_e_r[i], t_b[i], 1029);
    return NULL;
}
int i_t[4] = {0};

int e_4116_TP(char buf[4116], int readSize) {
    pthread_t t[4];
    for (int i = 0; i < 3; ++i) {
        substr2(t_b[i], buf, 1029 * i, 1029);
        i_t[i] = i;
        pthread_create(&(t[i]), NULL, T_fun, &(i_t[i]));
    }
    for (int j = 0; j < 4; ++j) {
        pthread_join(t[j], NULL);
    }
}
















