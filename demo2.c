#include <stdio.h>
#define FILEPATH "C:\\zhc\\f\\a\\��׳-ħ���е���ʹ.mp3"

/*int main()//�����ļ�������
{
    FILE *input, *output;
    int i;
    int a[10];
    output = fopen(FILEPATH, "r");*//*d://python.txtΪ�ļ���ַ�����֣�python.txt����Ϊ����1��10���ո����*//*
    input = fopen(FILEPATH, "a");
    for (i = 0; i < 10; i++)
        fprintf(input, "%d ", i * 10);
    fprintf(input, "woaini");
    fclose(input);
    if (output != NULL)//������ֵ�����̨
    {
        for (i = 0; i < 10; i++) {
            fscanf(output, "%d", &a[i]);
            printf("%d ", a[i]);
        }
    } else
        printf("hello world");
    return 0;
}*/
void main()//�����ļ�������
{
	FILE *input,*output;
	char b[10],a;
	gets(b);
	input=fopen(FILEPATH,"a");
	output=fopen(FILEPATH,"r");
	fprintf(input,"%s\n",b);
	fscanf(output,"%c",&a);//��ȡ�ļ�
	printf("%c ",a);
	fclose(input);
}