/*
#include "com_zhc_u_demo_JNI_a.h"
#include "u/a.h"

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
#pragma clang diagnostic ignored "-Wunused-parameter"

JNIEXPORT jstring JNICALL Java_com_zhc_u_demo_JNI_a_f1
        (JNIEnv *env, jobject obj, jstring str, jint i) {
    char *a = (char *) str;
    char r[strlen(a) + (int) i];
    int l = IntegerLen((int) i);
    char s[l];
    itoa((int) i, s, 10);
    strcpy(r, a);
    strcat(r, s);
    for (int j = 0; j < 1000; ++j) {
        printf_s("啊");
    }
    jstring jstring1 = (*env)->NewStringUTF(env, r);
    return jstring1;
}

JNIEXPORT void JNICALL Java_com_zhc_u_demo_JNI_a_cls
        (JNIEnv *env, jobject obj) {
    system("color 0");
}*/


#include <stdio.h>
#include "com_zhc_u_demo_JNI_a.h"


/*
JNIEXPORT jint JNICALL Java_com_zhc_u_demo_JNI_a_f1
        (JNIEnv *env, jclass c, jint i) {
//    int a = (int) i;
//    return (jint) (a + 2 - a * 3 - 2 + 7 / (a - 6 + 2 * a));
    return 1;
}*/


JNIEXPORT jint JNICALL Java_com_zhc_u_demo_JNI_a_f1
        (JNIEnv *env, jobject obj, jint i) {
    int a = (int) i;
    return (jint) (a + 2 - a * 3 - 2 + 7 / (a - 6 + 2 * a));
}