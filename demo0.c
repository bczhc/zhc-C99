/*
#include "zhc.h"
#include <pthread.h>

void *t0M() {
    for (int i = 0; i < 10; ++i) {
        printf("t0-%i\n", i);
    }
    return NULL;
}

void *t1M() {
    for (int i = 0; i < 10; ++i) {
        printf("t1-%i\n", i);
    }
    return NULL;
}

void *t2M() {
    for (int i = 0; i < 10; ++i) {
        printf("t2-%i\n", i);
    }
    return NULL;
}

void *t3M() {
    for (int i = 0; i < 10; ++i) {
        printf("t3-%i\n", i);
    }
    return NULL;
}

pthread_t t0;
pthread_t t1;
pthread_t t2;
pthread_t t3;

int main() {
    if (pthread_create(&t0, NULL, t0M, NULL) == EOF) return EOF;
    if (pthread_create(&t1, NULL, t1M, NULL) == EOF) return EOF;
    if (pthread_create(&t2, NULL, t2M, NULL) == EOF) return EOF;
    if (pthread_create(&t3, NULL, t3M, NULL) == EOF) return EOF;
    void *tR;
    if (pthread_join(t0, &tR) == EOF) return EOF;
    if (pthread_join(t1, &tR) == EOF) return EOF;
    if (pthread_join(t2, &tR) == EOF) return EOF;
    if (pthread_join(t3, &tR) == EOF) return EOF;
    return 0;
}*/





/*
#include <pthread.h>
#include "zhc.h"

pthread_t t;


void *f(int a) {
    printf("%i", a);
    return NULL;
}

int main() {
    if (pthread_create(&t, NULL, f(2), NULL) == EOF) return EOF;
    void *tR;
    if (pthread_join(t, &tR) == EOF) return EOF;
    return 0;
}
*/


/*
#include "zhc.h"
#include <malloc.h>

int main() {
    char *c = NULL;
    printf("%i\n", sizeof(c));
    c = (char *) malloc((size_t) (10 * sizeof(char)));
    strcat(c, "123456789");
    printf_s(c);
    printf("\n%i\n", sizeof(c));
    return 0;
}*/


/*
#include "zhc.h"
#include <pthread.h>

void *f0(const char *c) {
    printf("%s-f0\n", c);
    return NULL;
}

void *f1(const char *c) {
    printf("%s-f1\n", c);
    return NULL;
}

int main() {
    pthread_t t0;
    pthread_t t1;
    if (pthread_create(&t0, NULL, f0("t0"), NULL)) return -1;
    if (pthread_create(&t1, NULL, f1("t1"), NULL)) return -1;
    return 0;
}
*/


#include <stdlib.h>
#include "zhc.h"
//#include <pthread.h>

int main(void) {
    char *iR_ = Scanf();
    char *iR = malloc((size_t) +strlen(iR_) + 2);
    strcpy(iR, iR_);
    strcat(iR, ",");
    int docC = 0, iR_len = strlen(iR);
    for (int i = 0; i < iR_len + 1; ++i) {
        if (iR[i] == 44/*','*/) {
            ++docC;
        }
    }
    printf("%i", docC);
    char *a[docC];
    int lastIndex = -1, a_i = 0;
    for (int j = 0; j < iR_len + 1; ++j) {
        if (iR[j] == 44) {
            a[a_i] = (char *) malloc((size_t) (j - lastIndex));
            lastIndex = j;
            ++a_i;
        } else {
            a[a_i] = addStr(a[a_i], charToCharPtr(iR[j]));
        }
    }
    printf("%s", a[0]);
    return 0;
}