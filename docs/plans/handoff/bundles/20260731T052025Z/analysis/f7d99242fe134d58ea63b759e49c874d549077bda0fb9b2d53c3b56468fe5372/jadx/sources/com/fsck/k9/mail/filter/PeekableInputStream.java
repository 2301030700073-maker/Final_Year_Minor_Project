package com.fsck.k9.mail.filter;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PeekableInputStream extends FilterInputStream implements InputStreamRetargetInterface {
    public final BufferedInputStream inputStream;
    public boolean peeked;
    public int peekedByte;

    public PeekableInputStream(BufferedInputStream bufferedInputStream) {
        super(bufferedInputStream);
        this.inputStream = bufferedInputStream;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        boolean z = this.peeked;
        BufferedInputStream bufferedInputStream = this.inputStream;
        return !z ? bufferedInputStream.available() : bufferedInputStream.available() + 1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    public final int peek() {
        if (!this.peeked) {
            this.peekedByte = this.inputStream.read();
            this.peeked = true;
        }
        return this.peekedByte;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        boolean z = this.peeked;
        BufferedInputStream bufferedInputStream = this.inputStream;
        if (!z) {
            return bufferedInputStream.read(bArr, i, i2);
        }
        bArr[i] = (byte) this.peekedByte;
        this.peeked = false;
        int read = bufferedInputStream.read(bArr, i + 1, i2 - 1);
        if (read == -1) {
            return 1;
        }
        return read + 1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        boolean z = this.peeked;
        BufferedInputStream bufferedInputStream = this.inputStream;
        if (!z) {
            return bufferedInputStream.skip(j);
        }
        if (j <= 0) {
            return 0L;
        }
        this.peeked = false;
        return bufferedInputStream.skip(j - 1);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)", Arrays.copyOf(new Object[]{this.inputStream.toString(), Boolean.valueOf(this.peeked), Integer.valueOf(this.peekedByte)}, 3));
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (!this.peeked) {
            return this.inputStream.read();
        }
        this.peeked = false;
        return this.peekedByte;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        bArr.getClass();
        return read(bArr, 0, bArr.length);
    }
}
