package com.fsck.k9.mail.filter;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Base64OutputStream extends FilterOutputStream {
    public final Base64 base64;
    public final boolean doEncode;
    public final byte[] singleByte;

    public Base64OutputStream(OutputStream outputStream) {
        super(outputStream);
        this.singleByte = new byte[1];
        this.doEncode = true;
        this.base64 = new Base64();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        byte[] bArr = this.singleByte;
        boolean z = this.doEncode;
        Base64 base64 = this.base64;
        if (z) {
            base64.encode(bArr, 0, -1);
        } else {
            base64.decode(bArr, 0, -1);
        }
        flush(true);
    }

    public final void flush(boolean z) {
        byte[] bArr;
        int readResults;
        Base64 base64 = this.base64;
        int i = base64.buf != null ? base64.pos - base64.readPos : 0;
        if (i > 0 && (readResults = base64.readResults(i, (bArr = new byte[i]))) > 0) {
            ((FilterOutputStream) this).out.write(bArr, 0, readResults);
        }
        if (z) {
            ((FilterOutputStream) this).out.flush();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        bArr.getClass();
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i > bArr.length || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 > 0) {
            boolean z = this.doEncode;
            Base64 base64 = this.base64;
            if (z) {
                base64.encode(bArr, i, i2);
            } else {
                base64.decode(bArr, i, i2);
            }
            flush(false);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        flush(true);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        byte[] bArr = this.singleByte;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
