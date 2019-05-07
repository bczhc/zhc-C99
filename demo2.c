#include <stdio.h>
#define FILEPATH "C:\\zhc\\f\\a\\大壮-魔鬼中的天使.mp3"

/*int main()//基本文件流操作
{
    FILE *input, *output;
    int i;
    int a[10];
    output = fopen(FILEPATH, "r");*//*d://python.txt为文件地址和名字，python.txt内容为数字1到10，空格隔开*//*
    input = fopen(FILEPATH, "a");
    for (i = 0; i < 10; i++)
        fprintf(input, "%d ", i * 10);
    fprintf(input, "woaini");
    fclose(input);
    if (output != NULL)//输出数字到控制台
    {
        for (i = 0; i < 10; i++) {
            fscanf(output, "%d", &a[i]);
            printf("%d ", a[i]);
        }
    } else
        printf("hello world");
    return 0;
}*/
void main()//基本文件流操作
{
	FILE *input,*output;
	char b[10],a;
	gets(b);
	input=fopen(FILEPATH,"a");
	output=fopen(FILEPATH,"r");
	fprintf(input,"%s\n",b);
	fscanf(output,"%c",&a);//读取文件
	printf("%c ",a);
	fclose(input);
}