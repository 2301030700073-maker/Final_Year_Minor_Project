package com.amazonaws.util;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public enum Base64 {
    ;


    /* renamed from: do, reason: not valid java name */
    public static final Base64Codec f9069do = new Base64Codec();

    /* renamed from: do, reason: not valid java name */
    public static String m5174do(byte... bArr) {
        byte[] bArr2;
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Base64Codec base64Codec = f9069do;
        base64Codec.getClass();
        int length = bArr.length / 3;
        int length2 = bArr.length % 3;
        int i = 0;
        if (length2 == 0) {
            bArr2 = new byte[length * 4];
            int i2 = 0;
            int i3 = 0;
            while (i2 < bArr.length) {
                base64Codec.m5175do(bArr, i2, bArr2, i3);
                i2 += 3;
                i3 += 4;
            }
        } else {
            bArr2 = new byte[(length + 1) * 4];
            int i4 = 0;
            int i5 = 0;
            while (i4 < bArr.length - length2) {
                base64Codec.m5175do(bArr, i4, bArr2, i5);
                i4 += 3;
                i5 += 4;
            }
            byte[] bArr3 = base64Codec.f9071do;
            if (length2 == 1) {
                int i6 = i5 + 1;
                byte b = bArr[i4];
                bArr2[i5] = bArr3[(b >>> 2) & 63];
                int i7 = i6 + 1;
                bArr2[i6] = bArr3[(b & 3) << 4];
                bArr2[i7] = 61;
                bArr2[i7 + 1] = 61;
            } else if (length2 == 2) {
                int i8 = i5 + 1;
                int i9 = i4 + 1;
                byte b2 = bArr[i4];
                bArr2[i5] = bArr3[(b2 >>> 2) & 63];
                int i10 = i8 + 1;
                byte b3 = bArr[i9];
                bArr2[i8] = bArr3[((b2 & 3) << 4) | ((b3 >>> 4) & 15)];
                bArr2[i10] = bArr3[(b3 & 15) << 2];
                bArr2[i10 + 1] = 61;
            }
        }
        char[] cArr = new char[bArr2.length];
        int length3 = bArr2.length;
        int i11 = 0;
        while (i < length3) {
            cArr[i11] = (char) bArr2[i];
            i++;
            i11++;
        }
        return new String(cArr);
    }
}
