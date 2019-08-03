//
// Created by root on 19-7-9.
//
#include <stdio.h>
#include <stdint.h>
#include "../zhc.h"

void pi(int bN) {
    char *R = NULL;
    long a[2] = {956, 80}, b[2] = {57121, 25}, i = 0, j, k, p, q, r, s = 2, t, u, v, N, M = 10000;
//    printf("%9cMachin%6cpi=16arctan(1/5)-4arctan(1/239)\nPlease input a number.\n", 32, 32);
    N = bN;
    /*cin >> N, */
    N = N / 4 + 3;
    long pi[N], e[N];
    while (i < N) {
        pi[i++] = 0;
    }
    while (--s + 1) {
        for (*e = a[k = s], i = N; --i;)e[i] = 0;
        for (q = 1; j = i - 1, i < N; e[i] ? 0 : ++i, q += 2, k = !k)
            for (r = v = 0; ++j < N; pi[j] += k ? u : -u) {
                u = (t = v * M + (e[j] = (p = r * M + e[j]) / b[s])) / q, r = p % b[s], v = t % q;
            }
    }
    while (--i) {
        if ((pi[i] = (t = pi[i] + s) % M) < 0)
            pi[i] += M, s = t / M - 1;
        else s = t / M;
//        printf("%li\n", pi[i]);
    }
    for (strcpyAndCat_auto(&R, "3.", ""); ++i < N - 2;) {
        char *R0 = NULL;
        m_itoa(&R0, (int) pi[i]);
        strcat_auto(&R, R0);
    }
    printf("%s\n", R);
}

int main() {
    /*int (*f)(int a1);
    void *handle = dlopen("/home/zhc/code/code/java/src/test/libs/x86_64/liba.so", RTLD_LAZY);
    f = dlsym(handle, "f0");
    printf("%i\n", f(2));
    dlclose(handle);*/
//    char c = 'h';
//    char *s = (char *) &c;
//    printf("%s\n", (char *) &c);
    /*char *s = NULL;
    strcat_auto(&s, "a");
    for (int i = 0; i < 1000; ++i) {
        strcat_auto(&s, "b");
    }
    printf("%s\n", s);*/
    /*char *s = NULL;
    long l = 999999999999999999L;
    m_ltoa(&s, l);
    printf("%s\n", s);*/
    return 0;
}