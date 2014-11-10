package com.ss.jni;


public class JNIUtil {
	static {
		System.loadLibrary("rusteze");
	}
	public static native int nativec();
}
