#include <stdio.h>
#include <process.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char *c1[100], *c2[100];
    for (int i = 1; i < argc; ++i) {
        strcpy((char *) c1, "del /f/A/q ");
        strcpy((char *) c2, "rd /s/q ");
        /////////////////////
        strcat((char *) c1, "\"");
        strcat((char *) c1, argv[i]);
        strcat((char *) c1, "\"");
        strcat((char *) c1, " 2>nul>nul");
        /////////////////
        strcat((char *) c2, "\"");
        strcat((char *) c2, argv[i]);
        strcat((char *) c2, "\"");
        strcat((char *) c2, " 2>nul>nul");
        ////////////////////
        system((char *) c1);
        system((char *) c2);
        printf("%s\n", argv[i]);
//        printf("%s\n", (char *) c1);
//        printf("%s\n", (char *) c2);
    }
//    system("pause");
    return 0;
}