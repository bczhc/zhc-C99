//
// Created by root on 19-6-26.
//

#include <signal.h>
#include "../zhc.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wmissing-noreturn"

FILE *fp = NULL;

void f() {
    printf("\n%s\n", "close fopen...");
    fclose(fp);
    printf("\nExit.\n");
    exit(0);
}

int main(const int argc, char **argv) {
    if (argc > 1) signal(SIGINT, f);
    int b = argc == 2;
    if (b) {
        if ((fp = fopen(argv[1], "a+")) == NULL) {
            printf("fopen error.\n");
            return -1;
        }
    }
    char *s = NULL;
    while (1) {
        Scanf(&s);
        if (b) {
            fprintf(fp, "%s\n", s);
        }
        printf("%s\n", s);
    }
}

#pragma clang diagnostic pop