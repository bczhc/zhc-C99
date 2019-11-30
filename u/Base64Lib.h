#include "../zhc.h"
#include <pthread.h>

// Created by zhc on 2019/5/11.
//
#ifndef C99_BASE64LIB_H
#define C99_BASE64LIB_H
#endif //C99_BASE64LIB_H

#define READ_SIZE 1023
#define R_S 1364
#define W_R 768

char *e1(char *Dest, const char cArr[3]);

void d1(char *Dest, const char cArr[4]);

char *d1_EQ_M(char *Dest, const char cArr[4], int eqM_C);

void eD(char **Dest, const char *s, int len);

void dD(char **Dest, const char *s);

void initDT();

void eT_D();

int e_1023P(char *Dest, char buf[READ_SIZE], int readSize);

int d_1024P(char *Dest, const char buf[1024], const int readSize);

int d_1024P_eqM(char *Dest, const char *buf, const int readSize, const int eqM_C);