package com.fsck.k9.mail.filter;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Base64 {
    public byte[] buf;
    public int currentLinePos;
    public final int decodeSize;
    public final int encodeSize;
    public boolean eof;
    public final int lineLength;
    public final byte[] lineSeparator;
    public int modulus;
    public int pos;
    public int readPos;
    public int x;
    public static final byte[] CHUNK_SEPARATOR = {13, 10};
    public static final byte[] intToBase64 = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    public static final byte[] base64ToInt = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    public Base64(int i, byte[] bArr) {
        this.lineLength = i;
        byte[] bArr2 = new byte[bArr.length];
        this.lineSeparator = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        if (i > 0) {
            this.encodeSize = bArr.length + 4;
        } else {
            this.encodeSize = 4;
        }
        this.decodeSize = this.encodeSize - 1;
        for (byte b : bArr) {
            if (b == 61 || (b >= 0 && b < 123 && base64ToInt[b] != -1)) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("lineSeperator must not contain base64 characters: [", new String(bArr, Charset.forName("UTF-8")), "]"));
                throw null;
            }
        }
    }

    public static byte[] decodeBase64(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        Base64 base64 = new Base64();
        base64.buf = new byte[(bArr.length * 3) / 4];
        base64.pos = 0;
        base64.readPos = 0;
        base64.decode(bArr, 0, bArr.length);
        base64.decode(bArr, 0, -1);
        int i = base64.pos;
        byte[] bArr2 = new byte[i];
        base64.readResults(i, bArr2);
        return bArr2;
    }

    public static byte[] encodeBase64$1(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        Base64 base64 = new Base64(0, CHUNK_SEPARATOR);
        long length = (bArr.length * 4) / 3;
        long j = length % 4;
        if (j != 0) {
            length += 4 - j;
        }
        if (length > 2147483647L) {
            UriKt$$ExternalSyntheticBUOutline0.m("Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647");
            return null;
        }
        int i = (int) length;
        byte[] bArr2 = new byte[i];
        base64.buf = bArr2;
        base64.pos = 0;
        base64.readPos = 0;
        base64.encode(bArr, 0, bArr.length);
        base64.encode(bArr, 0, -1);
        if (base64.buf != bArr2) {
            base64.readResults(i, bArr2);
        }
        return bArr2;
    }

    public final void decode(byte[] bArr, int i, int i2) {
        byte b;
        if (this.eof) {
            return;
        }
        if (i2 < 0) {
            this.eof = true;
        }
        int i3 = 0;
        while (i3 < i2) {
            byte[] bArr2 = this.buf;
            if (bArr2 == null || bArr2.length - this.pos < this.decodeSize) {
                resizeBuf();
            }
            int i4 = i + 1;
            byte b2 = bArr[i];
            if (b2 == 61) {
                int i5 = this.x;
                int i6 = i5 << 6;
                this.x = i6;
                int i7 = this.modulus;
                if (i7 == 2) {
                    int i8 = i5 << 12;
                    this.x = i8;
                    byte[] bArr3 = this.buf;
                    int i9 = this.pos;
                    this.pos = i9 + 1;
                    bArr3[i9] = (byte) ((i8 >> 16) & 255);
                } else if (i7 == 3) {
                    byte[] bArr4 = this.buf;
                    int i10 = this.pos;
                    int i11 = i10 + 1;
                    this.pos = i11;
                    bArr4[i10] = (byte) ((i6 >> 16) & 255);
                    this.pos = i10 + 2;
                    bArr4[i11] = (byte) ((i6 >> 8) & 255);
                }
                this.eof = true;
                return;
            }
            if (b2 >= 0 && b2 < 123 && (b = base64ToInt[b2]) >= 0) {
                int i12 = (this.modulus + 1) % 4;
                this.modulus = i12;
                int i13 = (this.x << 6) + b;
                this.x = i13;
                if (i12 == 0) {
                    byte[] bArr5 = this.buf;
                    int i14 = this.pos;
                    int i15 = i14 + 1;
                    this.pos = i15;
                    bArr5[i14] = (byte) ((i13 >> 16) & 255);
                    int i16 = i14 + 2;
                    this.pos = i16;
                    bArr5[i15] = (byte) ((i13 >> 8) & 255);
                    this.pos = i14 + 3;
                    bArr5[i16] = (byte) (i13 & 255);
                }
            }
            i3++;
            i = i4;
        }
    }

    public final void encode(byte[] bArr, int i, int i2) {
        if (this.eof) {
            return;
        }
        int i3 = this.lineLength;
        int i4 = this.encodeSize;
        byte[] bArr2 = intToBase64;
        byte[] bArr3 = this.lineSeparator;
        if (i2 >= 0) {
            int i5 = i;
            int i6 = 0;
            while (i6 < i2) {
                byte[] bArr4 = this.buf;
                if (bArr4 == null || bArr4.length - this.pos < i4) {
                    resizeBuf();
                }
                int i7 = (this.modulus + 1) % 3;
                this.modulus = i7;
                int i8 = i5 + 1;
                int i9 = bArr[i5];
                if (i9 < 0) {
                    i9 += 256;
                }
                int i10 = (this.x << 8) + i9;
                this.x = i10;
                if (i7 == 0) {
                    byte[] bArr5 = this.buf;
                    int i11 = this.pos;
                    int i12 = i11 + 1;
                    this.pos = i12;
                    bArr5[i11] = bArr2[(i10 >> 18) & 63];
                    int i13 = i11 + 2;
                    this.pos = i13;
                    bArr5[i12] = bArr2[(i10 >> 12) & 63];
                    int i14 = i11 + 3;
                    this.pos = i14;
                    bArr5[i13] = bArr2[(i10 >> 6) & 63];
                    int i15 = i11 + 4;
                    this.pos = i15;
                    bArr5[i14] = bArr2[i10 & 63];
                    int i16 = this.currentLinePos + 4;
                    this.currentLinePos = i16;
                    if (i3 > 0 && i3 <= i16) {
                        System.arraycopy(bArr3, 0, bArr5, i15, bArr3.length);
                        this.pos += bArr3.length;
                        this.currentLinePos = 0;
                    }
                }
                i6++;
                i5 = i8;
            }
            return;
        }
        this.eof = true;
        byte[] bArr6 = this.buf;
        if (bArr6 == null || bArr6.length - this.pos < i4) {
            resizeBuf();
        }
        int i17 = this.modulus;
        if (i17 == 1) {
            byte[] bArr7 = this.buf;
            int i18 = this.pos;
            int i19 = i18 + 1;
            this.pos = i19;
            int i20 = this.x;
            bArr7[i18] = bArr2[(i20 >> 2) & 63];
            int i21 = i18 + 2;
            this.pos = i21;
            bArr7[i19] = bArr2[(i20 << 4) & 63];
            int i22 = i18 + 3;
            this.pos = i22;
            bArr7[i21] = 61;
            this.pos = i18 + 4;
            bArr7[i22] = 61;
        } else if (i17 == 2) {
            byte[] bArr8 = this.buf;
            int i23 = this.pos;
            int i24 = i23 + 1;
            this.pos = i24;
            int i25 = this.x;
            bArr8[i23] = bArr2[(i25 >> 10) & 63];
            int i26 = i23 + 2;
            this.pos = i26;
            bArr8[i24] = bArr2[(i25 >> 4) & 63];
            int i27 = i23 + 3;
            this.pos = i27;
            bArr8[i26] = bArr2[(i25 << 2) & 63];
            this.pos = i23 + 4;
            bArr8[i27] = 61;
        }
        if (i3 > 0) {
            System.arraycopy(bArr3, 0, this.buf, this.pos, bArr3.length);
            this.pos += bArr3.length;
        }
    }

    public final int readResults(int i, byte[] bArr) {
        byte[] bArr2 = this.buf;
        if (bArr2 == null) {
            return this.eof ? -1 : 0;
        }
        int min = Math.min(bArr2 != null ? this.pos - this.readPos : 0, i);
        byte[] bArr3 = this.buf;
        if (bArr3 == bArr) {
            this.buf = null;
            return min;
        }
        System.arraycopy(bArr3, this.readPos, bArr, 0, min);
        int i2 = this.readPos + min;
        this.readPos = i2;
        if (i2 >= this.pos) {
            this.buf = null;
        }
        return min;
    }

    public final void resizeBuf() {
        byte[] bArr = this.buf;
        if (bArr == null) {
            this.buf = new byte[8192];
            this.pos = 0;
            this.readPos = 0;
        } else {
            byte[] bArr2 = new byte[bArr.length * 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.buf = bArr2;
        }
    }

    public Base64() {
        this(76, CHUNK_SEPARATOR);
    }

    public static String decode(String str) {
        if (str == null) {
            return null;
        }
        new Base64();
        return new String(decodeBase64(str.getBytes()));
    }

    public static String encode(String str) {
        if (str == null) {
            return null;
        }
        new Base64();
        return new String(encodeBase64$1(str.getBytes()));
    }
}
