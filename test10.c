/*
#include <synchapi.h>
#include "u/Base64Lib.h"

void *tD(void *arg) {
    int a = *((int *) arg);
    */
/*
    Sleep((DWORD) (1000 * i));
    printf("%d\n", i);*//*

    for (int i = 0; i < 10; ++i) {
        printf("thread%i: %i\n", a, i);
    }
    return NULL;
}

int main() {
    pthread_t t[10];
    for (int i = 0; i < 10; ++i) {
        pthread_create(&(t[i]), NULL, tD, (void *) &i);
    }
    for (int j = 0; j < 10; ++j) {
        pthread_join(t[j], NULL);
    }

    printf("Thread...OK!\n");
    return 0;
}*/


#include <pthread.h>
#include <synchapi.h>
#include <stdio.h>

void *t_fn(void *args) {
    int i = *((int *) args);
    Sleep((DWORD) (1000 * i));
    printf("%d\n", i);
    return NULL;
}

int main() {
    pthread_t t[10];
    for (int i = 0; i < 10; ++i) {
        if (pthread_create(&(t[i]), NULL, t_fn, (void *) &i)) return -1;
    }
    for (int i = 0; i < 10; ++i) {
        if (pthread_join(t[i], NULL)) return -1;
    }
    printf("Thread done! \n");
    return 0;
}