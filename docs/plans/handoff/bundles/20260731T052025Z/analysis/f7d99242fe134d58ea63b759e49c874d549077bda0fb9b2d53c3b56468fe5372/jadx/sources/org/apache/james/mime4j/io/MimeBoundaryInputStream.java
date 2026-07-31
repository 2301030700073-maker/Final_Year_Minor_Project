package org.apache.james.mime4j.io;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeBoundaryInputStream extends LineReaderInputStream {
    public boolean atBoundary;
    public final byte[] boundary;
    public int boundaryLen;
    public final BufferedLineReaderInputStream buffer;
    public boolean completed;
    public boolean eof;
    public int initialLength;
    public boolean lastPart;
    public int limit;

    public MimeBoundaryInputStream(BufferedLineReaderInputStream bufferedLineReaderInputStream, String str) {
        super(bufferedLineReaderInputStream);
        int length = str.length() * 2;
        length = length < 4096 ? 4096 : length;
        if (length > bufferedLineReaderInputStream.buffer.length) {
            byte[] bArr = new byte[length];
            int bufferLen = bufferedLineReaderInputStream.bufferLen();
            if (bufferLen > 0) {
                byte[] bArr2 = bufferedLineReaderInputStream.buffer;
                int i = bufferedLineReaderInputStream.bufpos;
                System.arraycopy(bArr2, i, bArr, i, bufferLen);
            }
            bufferedLineReaderInputStream.buffer = bArr;
        }
        this.buffer = bufferedLineReaderInputStream;
        this.eof = false;
        this.limit = -1;
        this.atBoundary = false;
        this.boundaryLen = 0;
        this.lastPart = false;
        this.initialLength = -1;
        this.completed = false;
        byte[] bArr3 = new byte[str.length() + 2];
        this.boundary = bArr3;
        bArr3[0] = 45;
        bArr3[1] = 45;
        for (int i2 = 0; i2 < str.length(); i2++) {
            this.boundary[i2 + 2] = (byte) str.charAt(i2);
        }
        fillBuffer$1();
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0135, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int fillBuffer$1() {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.io.MimeBoundaryInputStream.fillBuffer$1():int");
    }

    public final boolean hasData() {
        int i = this.limit;
        BufferedLineReaderInputStream bufferedLineReaderInputStream = this.buffer;
        return i > bufferedLineReaderInputStream.bufpos && i <= bufferedLineReaderInputStream.buflen;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        while (readAllowed()) {
            if (hasData()) {
                int i3 = this.limit;
                BufferedLineReaderInputStream bufferedLineReaderInputStream = this.buffer;
                return bufferedLineReaderInputStream.read(bArr, i, Math.min(i2, i3 - bufferedLineReaderInputStream.bufpos));
            }
            fillBuffer$1();
        }
        return -1;
    }

    public final boolean readAllowed() {
        if (this.completed) {
            return false;
        }
        if ((!this.eof && !this.atBoundary) || hasData()) {
            return true;
        }
        skipBoundary();
        return false;
    }

    @Override // org.apache.james.mime4j.io.LineReaderInputStream
    public final int readLine(ByteArrayBuffer byteArrayBuffer) {
        boolean z = false;
        if (byteArrayBuffer == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Destination buffer may not be null");
            return 0;
        }
        if (readAllowed()) {
            int i = 0;
            int i2 = 0;
            while (true) {
                if (z) {
                    break;
                }
                if (!hasData()) {
                    i2 = fillBuffer$1();
                    if ((this.eof || this.atBoundary) && !hasData()) {
                        skipBoundary();
                        i2 = -1;
                        break;
                    }
                }
                int i3 = this.limit;
                BufferedLineReaderInputStream bufferedLineReaderInputStream = this.buffer;
                int i4 = bufferedLineReaderInputStream.bufpos;
                int i5 = i3 - i4;
                int indexOf = bufferedLineReaderInputStream.indexOf(i4, i5);
                if (indexOf != -1) {
                    i5 = (indexOf + 1) - bufferedLineReaderInputStream.bufpos;
                    z = true;
                }
                if (i5 > 0) {
                    byteArrayBuffer.append(bufferedLineReaderInputStream.buffer, bufferedLineReaderInputStream.bufpos, i5);
                    bufferedLineReaderInputStream.skip(i5);
                    i += i5;
                }
            }
            if (i != 0 || i2 != -1) {
                return i;
            }
        }
        return -1;
    }

    public final void skipBoundary() {
        if (this.completed) {
            return;
        }
        this.completed = true;
        int i = this.boundaryLen;
        BufferedLineReaderInputStream bufferedLineReaderInputStream = this.buffer;
        bufferedLineReaderInputStream.skip(i);
        boolean z = true;
        while (true) {
            if (bufferedLineReaderInputStream.bufferLen() > 1) {
                int byteAt = bufferedLineReaderInputStream.byteAt(bufferedLineReaderInputStream.bufpos);
                int byteAt2 = bufferedLineReaderInputStream.byteAt(bufferedLineReaderInputStream.bufpos + 1);
                if (z && byteAt == 45 && byteAt2 == 45) {
                    this.lastPart = true;
                    bufferedLineReaderInputStream.skip(2);
                    z = false;
                } else if (byteAt == 13 && byteAt2 == 10) {
                    bufferedLineReaderInputStream.skip(2);
                    return;
                } else {
                    if (byteAt == 10) {
                        bufferedLineReaderInputStream.skip(1);
                        return;
                    }
                    bufferedLineReaderInputStream.skip(1);
                }
            } else if (this.eof) {
                return;
            } else {
                fillBuffer$1();
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MimeBoundaryInputStream, boundary ");
        for (byte b : this.boundary) {
            sb.append((char) b);
        }
        return sb.toString();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        while (readAllowed()) {
            if (hasData()) {
                return this.buffer.read();
            }
            fillBuffer$1();
        }
        return -1;
    }
}
