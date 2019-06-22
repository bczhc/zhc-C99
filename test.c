short add(short first, short second);

/*
 * 如果用完全用C语言写16位代码，则入口函数必须写成第一个函数。
 *
 * 虽然使用了freestanding environment，但gcc仍然对main函数额外做了特殊的处理。
 * 具体是添加了下面三条指令：
 * leal 4(%esp), %ecx
 * and 0xFFFFFFF0, %esp
 * pushl (%ecx-4)
 * 其在main函数最开始初始化了栈顶的位置，故在此需要使用另外的入口函数。
 * 在链接过程中，需要在在ld命令中需要使用的-e参数设置该函数为入口函数。
 */
void mymain(void) {
    short a = 0x1122;
    short b = 0x3344;
    short c;

    c = add(a, b);
}

short add(short first, short second) {
    return first + second;
}