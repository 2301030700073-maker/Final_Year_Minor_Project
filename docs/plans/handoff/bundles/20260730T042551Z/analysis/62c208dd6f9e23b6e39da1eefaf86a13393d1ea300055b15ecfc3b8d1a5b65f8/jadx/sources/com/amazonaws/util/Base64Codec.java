package com.amazonaws.util;

import defpackage.Creturn;

/* loaded from: classes.dex */
class Base64Codec {

    /* renamed from: do, reason: not valid java name */
    public final byte[] f9071do;

    public Base64Codec() {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            char c = charArray[i];
            if (c > 127) {
                throw new IllegalArgumentException(Creturn.m7981if("Invalid character found at position ", i, " for ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"));
            }
            bArr[i] = (byte) c;
        }
        this.f9071do = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5175do(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        int i4 = i + 1;
        byte b = bArr[i];
        byte[] bArr3 = this.f9071do;
        bArr2[i2] = bArr3[(b >>> 2) & 63];
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        bArr2[i3] = bArr3[((b & 3) << 4) | ((b2 >>> 4) & 15)];
        byte b3 = bArr[i6];
        bArr2[i5] = bArr3[((b2 & 15) << 2) | ((b3 >>> 6) & 3)];
        bArr2[i5 + 1] = bArr3[b3 & 63];
    }
}
