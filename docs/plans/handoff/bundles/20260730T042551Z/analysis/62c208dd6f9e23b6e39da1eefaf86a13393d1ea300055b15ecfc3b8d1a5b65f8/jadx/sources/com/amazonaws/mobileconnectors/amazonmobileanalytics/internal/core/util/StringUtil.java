package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util;

/* loaded from: classes.dex */
public final class StringUtil {
    /* renamed from: do, reason: not valid java name */
    public static String m5078do(String str, int i, boolean z) {
        String substring = str.substring(0, Math.min(i, str.length()));
        return (!z || substring.length() >= str.length()) ? substring : substring.concat("...");
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m5079if(String str) {
        return str == null || str.length() == 0;
    }
}
