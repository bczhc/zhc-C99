#include <stdio.h>
#include <string.h>
#include <process.h>


int main(int argc, char *argv[]) {//By bczhc
    char FilePath[100];
    if ((int) argv[0][0] == '.' || strstr(argv[0], ":")) {
        strcpy(FilePath, argv[0]);
    } else {
        strcpy(FilePath, ".\\");
        strcat(FilePath, argv[0]);
    }
    for (int i = strlen(FilePath); i > 0; --i) {
        if (FilePath[i] == '\\') {
            FilePath[i] = '\0';
            break;
        }
    }
    strcat(FilePath, "\\");
    if (argc == 1) {
        printf("�������command [�ռ��������ַ] [���⣨���˫���ţ�] [���ģ���txt�ļ����棬����·�������˫���ţ�] [��������ѡ��������·�������˫����]\n"
               "���Ϸ��ʼ�exeӦ�ڵ���Ŀ¼������Ϊ\"SimpleEmail\"\n"
                /*"ʹ�á�-ren����������������Ŀ¼exeΪ\"SimpleEmail\"��"*/);
    } else if (!strcmp(argv[1], "-ren")) {
        //TODO -ren_...
    } else if (argc >= 4) {
        char *c[100];
        strcpy((char *) c, "echo off && ");
        strcat((char *) c, "call \"");
        strcat((char *) c, (char *) FilePath);
        strcat((char *) c, "blat\\blat.exe");
        strcat((char *) c, "\"");
        strcat((char *) c, " \"");
        strcat((char *) c, argv[3]);//�ʼ����� ��txt����
        strcat((char *) c, "\"");
        strcat((char *) c, " -to ");
        strcat((char *) c, argv[1]);//�ռ��������ַ
        strcat((char *) c, " -base64 ");
        strcat((char *) c, "-charset GB2312 ");
        strcat((char *) c, "-subject ");
        strcat((char *) c, "\"");
        strcat((char *) c, argv[2]);//�ʼ�����
        strcat((char *) c, "\"");
        strcat((char *) c, " -server ");
        if (strstr("bczhc0@126.com", "126")) strcat((char *) c, "smtp.126.com");
        strcat((char *) c, " -f ");
        strcat((char *) c, "bczhc0@126.com");//�����������ַ
        strcat((char *) c, " -u ");
        strcat((char *) c, "bczhc0");
        strcat((char *) c, " -pw ");
        strcat((char *) c, "dnbdyyx0");//��������������
        if (argc == 7) {
            strcat((char *) c, " -attach ");
            strcat((char *) c, "\"");
            strcat((char *) c, argv[4]);//����
            strcat((char *) c, "\"");
        }
//                printf("%s\n", (char *) c);
        system((char *) c);
    }
}