package org.apache.james.mime4j.io;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.io.FilterInputStream;
import java.io.InputStream;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LineReaderInputStreamAdaptor extends LineReaderInputStream {
    public final LineReaderInputStream bis;
    public boolean eof;
    public final int maxLineLen;
    public boolean used;

    public LineReaderInputStreamAdaptor(InputStream inputStream, int i) {
        super(inputStream);
        this.used = false;
        this.eof = false;
        if (inputStream instanceof LineReaderInputStream) {
            this.bis = (LineReaderInputStream) inputStream;
        } else {
            this.bis = null;
        }
        this.maxLineLen = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = ((FilterInputStream) this).in.read();
        this.eof = read == -1;
        this.used = true;
        return read;
    }

    @Override // org.apache.james.mime4j.io.LineReaderInputStream
    public final int readLine(ByteArrayBuffer byteArrayBuffer) {
        int read;
        int i;
        LineReaderInputStream lineReaderInputStream = this.bis;
        if (lineReaderInputStream != null) {
            i = lineReaderInputStream.readLine(byteArrayBuffer);
        } else {
            int i2 = 0;
            do {
                read = ((FilterInputStream) this).in.read();
                if (read == -1) {
                    break;
                }
                byteArrayBuffer.append(read);
                i2++;
                int i3 = this.maxLineLen;
                if (i3 > 0 && byteArrayBuffer.len >= i3) {
                    throw new MaxLineLimitException(CameraDevices$CC.m(new StringBuilder("Maximum line length limit ( "), this.maxLineLen, ") exceeded"));
                }
            } while (read != 10);
            i = (i2 == 0 && read == -1) ? -1 : i2;
        }
        this.eof = i == -1;
        this.used = true;
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        int read;
        if (j <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[j > 8192 ? 8192 : (int) j];
        long j2 = 0;
        while (j > 0 && (read = read(bArr)) != -1) {
            long j3 = read;
            j2 += j3;
            j -= j3;
        }
        return j2;
    }

    public final String toString() {
        return "[LineReaderInputStreamAdaptor: " + this.bis + "]";
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        this.eof = read == -1;
        this.used = true;
        return read;
    }
}
