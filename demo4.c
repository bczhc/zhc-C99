#include <stdio.h>
#include <string.h>
#include <process.h>

char *split(char str[], char delims[]) {
    char *result = NULL;
    result = strtok(str, delims);
    char *s = NULL;
    while (result != NULL) {
        s = result;
        break;
    }
    return s;
}

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
        printf("�򵥵��Լ����䷢�ʼ���������������\t��Ҫʹ��blat\r\n��Ҫ��ð�������ʹ�á�/? | --? | --h | --help����");
    } else {
        int t = 0;
        for (int i = 1; i < argc; ++i) {
            if (!strcmp(argv[i], "--help") || !strcmp(argv[i], "--h") || !strcmp(argv[i], "--?") ||
                !strcmp(argv[i], "/?"))
                t = 1;
        }
        if (t) {
            printf("%s",
                   (char *) "�������command [�ռ��˵��������ַ] [�����˵��������ַ] [�����˵�����������] [�ʼ����⣨���˫���ţ�] [�ʼ����ģ���TXT�ļ����棬��������txt�ļ�·�������˫���ţ�] [��������Ϊȱʡ�������ļ�·�������˫���ţ�]");
        } else {
            if (argc < 6) {
                printf("��ð�����ʹ�á�/? | --? | --h | --help����");
            } else {
                char *c[100];
                strcpy((char *) c, "echo off && ");
                strcat((char *) c, "call \"");
                strcat((char *) c, (char *) FilePath);
                strcat((char *) c, "blat\\blat.exe");
                strcat((char *) c, "\"");
                strcat((char *) c, " \"");
                strcat((char *) c, argv[5]);//�ʼ����� ��txt����
                strcat((char *) c, "\"");
                strcat((char *) c, " -to ");
                strcat((char *) c, argv[1]);//�ռ��������ַ
                strcat((char *) c, " -base64 ");
                strcat((char *) c, "-charset UTF-8 ");
                strcat((char *) c, "-subject ");
                strcat((char *) c, "\"");
                strcat((char *) c, argv[4]);//�ʼ�����
                strcat((char *) c, "\"");
                strcat((char *) c, " -server ");
                if (strstr(argv[2], "126")) strcat((char *) c, "smtp.126.com");
                if (strstr(argv[2], "qq")) strcat((char *) c, "smtp.qq.com");
                if (strstr(argv[2], "163")) strcat((char *) c, "smtp.163.com"); //����smtpЭ�� ��������ַ
                strcat((char *) c, " -f ");
                strcat((char *) c, argv[2]);//�����������ַ
                strcat((char *) c, " -u ");
                char *emailUserName = split(argv[2], "@");
                strcat((char *) c, emailUserName);
                strcat((char *) c, " -pw ");
                strcat((char *) c, argv[3]);//��������������
                if (argc == 7) {
                    strcat((char *) c, " -attach ");
                    strcat((char *) c, "\"");
                    strcat((char *) c, argv[6]);//����
                    strcat((char *) c, "\"");
                }
//                printf("%s\n", (char *) c);
                system((char *) c);
            }
        }
    }
}