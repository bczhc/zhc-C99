#include <stdio.h>
#include "com_zhc_u_demo_JNI_b.h"

JNIEXPORT jint JNICALL Java_com_zhc_u_demo_JNI_b_f0
        (JNIEnv *env, jobject obj) {
    return (jint) 666;
}