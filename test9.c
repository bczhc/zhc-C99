#include <stdio.h>
#include <process.h>
#include <string.h>

int isHF(char a) {
    int r = 0;
    if ((int) -(a >> 7)) {
        r = 1;
    }
    return r;
}

int main(int argc, char *argv[]) { //by zhc
    if (argc == 1) {
        printf("%s", "�ַ���������\n"
                     "������ÿ�仰�������ÿ���ַ�Ϊһ��ʹ��-ml���ÿ��зָ�������ÿ�仰�����Ϊһ�У���Ĭ�ϣ������κβ�����\n"
                     "���ж���һ��ʹ��-l���м��޷ָ�");
    }
    int isML = 0, isL = 0;
    int isMLIndex = 0, isLIndex = 0;
    for (int j = 1; j < argc; ++j) {
        if (!strcmp(argv[j], "-ml")) {
            isML = 1;
            isMLIndex = j;
        }
        if (!strcmp(argv[j], "-l")) {
            isL = 1;
            isLIndex = j;
        }
    }
    if (isL & isML) {
        printf("%s", "-l��-ml����ͬʱʹ��");
        return 0;
    }
    for (int i = 1; i < argc; ++i) {
        if (i != isMLIndex && i != isLIndex) {
            char s[strlen(argv[i])];
            strcpy(s, argv[i]);
            char r[strlen(argv[i])];
            do {
                if (!isHF(s[strlen(s) - 1])) {
                    strncpy(r, s + strlen(s) - 1, 16);
                    s[strlen(s) - 1] = '\0';

/*            printf("r: %s\n", r);
            printf("s: %s\n", s);
            system("pause");*/
//            r[strlen(r) - 1] = '\0';
                } else {
                    strncpy(r, s + strlen(s) - 2, 16);
                    s[strlen(s) - 2] = '\0';
//            r[strlen(r) - 1] = '\0';
//            system("pause");
                }
                if (isML) printf("%s\n", r);
                else printf("%s", r);
            } while (strlen(s) != 0);
            if (!(isL | isML)) {
                printf("%s", "\n");
            } else {
                if (isML) {
                    printf("%c", '\n');
                }
                if (isL) {

                }
            }
        }
    }
//    char *ss = "adasa��asd������ �����°���a�� aa s������aass s����add";
    /*char s[strlen(ss)];
    strcpy(s, ss);*/
    /*printf("%i\n", strlen(s));
    printf("%s\n", s);*/
//    system("pause");
    /*if (isHF(s[strlen(s) - 1])) {
        s[strlen(s) - 2] = '\0';
    } else {
        s[strlen(s) - 1] = '\0';
    }*/
    /*char r[strlen(ss)];
    do {
        if (!isHF(s[strlen(s) - 1])) {
            strncpy(r, s + strlen(s) - 1, 16);
            s[strlen(s) - 1] = '\0';

*//*            printf("r: %s\n", r);
            printf("s: %s\n", s);
            system("pause");*//*
//            r[strlen(r) - 1] = '\0';
        } else {
            strncpy(r, s + strlen(s) - 2, 16);
            s[strlen(s) - 2] = '\0';
//            r[strlen(r) - 1] = '\0';
//            system("pause");
        }
        printf("%s\n", r);
    } while (strlen(s) != 0);*/
//    r[strlen(r) - 1] = '\0';
//    printf("%s", r);
    return 0;
}