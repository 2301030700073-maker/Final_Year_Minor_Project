package c.b.b;

import com.google.protobuf.InvalidProtocolBufferException;

/* loaded from: classes.dex */
public final class W0 extends V0 {
    @Override // c.b.b.V0
    public String a(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = bArr[i];
            if (!c.b.a.c.b.a.b(b2)) {
                break;
            }
            i++;
            cArr[i4] = (char) b2;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte b3 = bArr[i];
            if (c.b.a.c.b.a.b(b3)) {
                int i7 = i5 + 1;
                cArr[i5] = (char) b3;
                i = i6;
                while (true) {
                    i5 = i7;
                    if (i < i3) {
                        byte b4 = bArr[i];
                        if (!c.b.a.c.b.a.b(b4)) {
                            break;
                        }
                        i++;
                        i7 = i5 + 1;
                        cArr[i5] = (char) b4;
                    }
                }
            } else {
                if (!(b3 < -32)) {
                    if (b3 < -16) {
                        if (i6 >= i3 - 1) {
                            throw InvalidProtocolBufferException.b();
                        }
                        int i8 = i6 + 1;
                        c.b.a.c.b.a.d(b3, bArr[i6], bArr[i8], cArr, i5);
                        i = i8 + 1;
                        i5++;
                    } else {
                        if (i6 >= i3 - 2) {
                            throw InvalidProtocolBufferException.b();
                        }
                        int i9 = i6 + 1;
                        byte b5 = bArr[i6];
                        int i10 = i9 + 1;
                        c.b.a.c.b.a.a(b3, b5, bArr[i9], bArr[i10], cArr, i5);
                        i5 = i5 + 1 + 1;
                        i = i10 + 1;
                    }
                } else {
                    if (i6 >= i3) {
                        throw InvalidProtocolBufferException.b();
                    }
                    c.b.a.c.b.a.c(b3, bArr[i6], cArr, i5);
                    i = i6 + 1;
                    i5++;
                }
            }
        }
        return new String(cArr, 0, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r9 + r6;
     */
    @Override // c.b.b.V0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int b(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.W0.b(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r12[r13] > (-65)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0047, code lost:
    
        if (r12[r13] > (-65)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0082, code lost:
    
        if (r12[r13] > (-65)) goto L50;
     */
    @Override // c.b.b.V0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int c(int r11, byte[] r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.W0.c(int, byte[], int, int):int");
    }
}
