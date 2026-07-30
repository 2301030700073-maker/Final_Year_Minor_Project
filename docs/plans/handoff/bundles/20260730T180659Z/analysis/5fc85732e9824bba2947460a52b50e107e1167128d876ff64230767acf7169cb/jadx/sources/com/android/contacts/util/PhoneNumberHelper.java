package com.android.contacts.util;

/* loaded from: classes.dex */
public class PhoneNumberHelper {
    public static boolean isUriNumber(String str) {
        return str != null && (str.contains("@") || str.contains("%40"));
    }
}
