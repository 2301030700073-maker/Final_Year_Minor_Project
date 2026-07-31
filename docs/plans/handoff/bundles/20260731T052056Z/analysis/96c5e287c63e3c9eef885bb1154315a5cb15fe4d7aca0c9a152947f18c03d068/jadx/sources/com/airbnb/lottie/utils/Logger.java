package com.airbnb.lottie.utils;

import android.util.Log;
import java.util.HashSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Logger {
    public static final LogcatLogger INSTANCE = new LogcatLogger();

    public static void warning(String str) {
        INSTANCE.getClass();
        HashSet hashSet = LogcatLogger.loggedMessages;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, null);
        hashSet.add(str);
    }

    public static void warning(String str, Throwable th) {
        INSTANCE.getClass();
        HashSet hashSet = LogcatLogger.loggedMessages;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        hashSet.add(str);
    }
}
