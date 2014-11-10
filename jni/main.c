#include <stdio.h>
#include <string.h>
#include <jni.h>
#ifndef __ANDROID_LOGCAT_H__
#define __ANDROID_LOGCAT_H__

#define TEST_DEBUG 1

#ifdef TEST_DEBUG

#include <android/log.h>
	#define LOGI(...)  __android_log_print(ANDROID_LOG_INFO,LOG_TAG,__VA_ARGS__)
	#define LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG,LOG_TAG,__VA_ARGS__)
	#define LOGW(...)  __android_log_print(ANDROID_LOG_WARN,LOG_TAG,__VA_ARGS__)
	#define LOGE(...)  __android_log_print(ANDROID_LOG_ERROR,LOG_TAG,__VA_ARGS__)
	#define LOGF(...)  __android_log_print(ANDROID_LOG_FATAL,LOG_TAG,__VA_ARGS__)
#else 
	#define LOGI(...) 	{}
	#define LOGD(...)  	{}
	#define LOGW(...)  	{}
	#define LOGE(...)  	{}
	#define LOGF(...)  	{}

#endif 

#endif


#define LOG_TAG "ss"

int encrypt() {
	int i = 0;
	char plaintext[128] = "abcdefg";
	LOGI("in encrypt!");
	return i;
}
JNIEXPORT jint Java_com_ss_jni_JNIUtil_nativec(JNIEnv *env, jclass thizz) {
	encrypt();
	return 1;
}