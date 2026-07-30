package com.amazonaws.util;

import com.facebook.appevents.AppEventsConstants;

/* loaded from: classes.dex */
public class BinaryUtils {
    /* renamed from: do, reason: not valid java name */
    public static String m5176do(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b);
            if (hexString.length() == 1) {
                sb.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            } else if (hexString.length() == 8) {
                hexString = hexString.substring(6);
            }
            sb.append(hexString);
        }
        return StringUtils.m5191do(sb.toString());
    }
}
