#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void fc(char *d, int n) {
    int len = strlen(d);
    char c[100] = "";
    char *e = NULL;
    int i = 0;
    if (n >= len) {
        printf("%s", d);
    } else {

        while (i < n) {
            //������8bit��������Ϊ1��ͨ������7λ&1�ж��Ƿ�Ϊ���֣����ֽ�ȡ2�ֽ�
            if (d[i] >> 7 & 1 && d[i + 1] >> 7 & 1)
                i = i + 2;
                //��ĸ��ȡ1�ֽ�
            else
                i++;
        }

        strncpy(c, d, (size_t) i);
        e = c;
        printf("��%s�ַ����н�ȡ%dλ�ַ�������ǣ�\n%s\n\n", d, n, e);
    }

}

int HF(char c) {//�Ƿ�Ϊ�Ϸ��ַ������жϴ���charתintֵ�Ƿ�С�ڵ���0
    int r = 1;
    if ((int) c <= 0) r = 0;
    return r;
}

int ceilingTo2(int i) {//����ȡ��Ϊ2�ı���
    return ((i - 1) / 2 + 1) * 2;
}

int YZ(char *s, int i) {
    int r = i;
    if (!HF(s[i - 1])) {
        r = ceilingTo2(i);
    }
    return r;
}

int main() {
    int i = 1;
    char *s = "abc����������!������";
    fc(s, YZ(s, i));
    return 0;
}