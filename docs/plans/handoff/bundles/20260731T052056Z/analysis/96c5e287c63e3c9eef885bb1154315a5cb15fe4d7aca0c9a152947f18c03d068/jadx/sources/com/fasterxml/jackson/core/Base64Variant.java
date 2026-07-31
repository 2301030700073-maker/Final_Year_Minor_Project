package com.fasterxml.jackson.core;

import androidx.compose.animation.core.Animation;
import java.io.Serializable;
import java.util.Arrays;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Base64Variant implements Serializable {
    public final transient int[] _asciiToBase64;
    public final transient byte[] _base64ToAsciiB;
    public final transient char[] _base64ToAsciiC;
    public final int _maxLineLength;
    public final String _name;
    public final char _paddingChar;
    public final PaddingReadBehaviour _paddingReadBehaviour;
    public final boolean _writePadding;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PaddingReadBehaviour {
        private static final /* synthetic */ PaddingReadBehaviour[] $VALUES;
        public static final PaddingReadBehaviour PADDING_ALLOWED;
        public static final PaddingReadBehaviour PADDING_FORBIDDEN;
        public static final PaddingReadBehaviour PADDING_REQUIRED;

        static {
            PaddingReadBehaviour paddingReadBehaviour = new PaddingReadBehaviour("PADDING_FORBIDDEN", 0);
            PADDING_FORBIDDEN = paddingReadBehaviour;
            PaddingReadBehaviour paddingReadBehaviour2 = new PaddingReadBehaviour("PADDING_REQUIRED", 1);
            PADDING_REQUIRED = paddingReadBehaviour2;
            PaddingReadBehaviour paddingReadBehaviour3 = new PaddingReadBehaviour("PADDING_ALLOWED", 2);
            PADDING_ALLOWED = paddingReadBehaviour3;
            $VALUES = new PaddingReadBehaviour[]{paddingReadBehaviour, paddingReadBehaviour2, paddingReadBehaviour3};
        }

        public static PaddingReadBehaviour valueOf(String str) {
            return (PaddingReadBehaviour) Enum.valueOf(PaddingReadBehaviour.class, str);
        }

        public static PaddingReadBehaviour[] values() {
            return (PaddingReadBehaviour[]) $VALUES.clone();
        }
    }

    public Base64Variant(String str, String str2, boolean z, char c, int i) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        this._writePadding = z;
        this._paddingChar = c;
        this._maxLineLength = i;
        int length = str2.length();
        if (length != 64) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(length, "Base64Alphabet length must be exactly 64 (was ", ")"));
            throw null;
        }
        str2.getChars(0, length, cArr, 0);
        Arrays.fill(iArr, -1);
        for (int i2 = 0; i2 < length; i2++) {
            char c2 = this._base64ToAsciiC[i2];
            this._base64ToAsciiB[i2] = (byte) c2;
            this._asciiToBase64[c2] = i2;
        }
        if (z) {
            this._asciiToBase64[c] = -2;
        }
        this._paddingReadBehaviour = z ? PaddingReadBehaviour.PADDING_REQUIRED : PaddingReadBehaviour.PADDING_FORBIDDEN;
    }

    public final int encodeBase64Chunk(char[] cArr, int i, int i2) {
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i2] = cArr2[(i >> 18) & 63];
        cArr[i2 + 1] = cArr2[(i >> 12) & 63];
        int i3 = i2 + 3;
        cArr[i2 + 2] = cArr2[(i >> 6) & 63];
        int i4 = i2 + 4;
        cArr[i3] = cArr2[i & 63];
        return i4;
    }

    public final int encodeBase64Partial(int i, int i2, char[] cArr, int i3) {
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i3] = cArr2[(i >> 18) & 63];
        int i4 = i3 + 2;
        cArr[i3 + 1] = cArr2[(i >> 12) & 63];
        if (!this._writePadding) {
            if (i2 != 2) {
                return i4;
            }
            int i5 = i3 + 3;
            cArr[i4] = cArr2[(i >> 6) & 63];
            return i5;
        }
        int i6 = i3 + 3;
        char c = this._paddingChar;
        cArr[i4] = i2 == 2 ? cArr2[(i >> 6) & 63] : c;
        int i7 = i3 + 4;
        cArr[i6] = c;
        return i7;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != Base64Variant.class) {
            return false;
        }
        Base64Variant base64Variant = (Base64Variant) obj;
        return base64Variant._paddingChar == this._paddingChar && base64Variant._maxLineLength == this._maxLineLength && base64Variant._writePadding == this._writePadding && base64Variant._paddingReadBehaviour == this._paddingReadBehaviour && this._name.equals(base64Variant._name);
    }

    public final int hashCode() {
        return this._name.hashCode();
    }

    public final String toString() {
        return this._name;
    }

    public Base64Variant(Base64Variant base64Variant) {
        PaddingReadBehaviour paddingReadBehaviour = base64Variant._paddingReadBehaviour;
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        byte[] bArr = new byte[64];
        this._base64ToAsciiB = bArr;
        this._name = "MIME-NO-LINEFEEDS";
        byte[] bArr2 = base64Variant._base64ToAsciiB;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = base64Variant._base64ToAsciiC;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = base64Variant._asciiToBase64;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this._writePadding = true;
        this._paddingChar = '=';
        this._maxLineLength = Integer.MAX_VALUE;
        this._paddingReadBehaviour = paddingReadBehaviour;
    }
}
