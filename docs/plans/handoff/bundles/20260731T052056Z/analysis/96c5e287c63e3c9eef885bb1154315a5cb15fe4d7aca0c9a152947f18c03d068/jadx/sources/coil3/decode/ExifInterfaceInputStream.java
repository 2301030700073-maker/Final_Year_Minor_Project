package coil3.decode;

import java.io.InputStream;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExifInterfaceInputStream extends InputStream {
    public int availableBytes = 1073741824;
    public final InputStream delegate;

    public ExifInterfaceInputStream(InputStream inputStream) {
        this.delegate = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.availableBytes;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.delegate.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        int read = this.delegate.read();
        if (read == -1) {
            this.availableBytes = 0;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.delegate.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        int read = this.delegate.read(bArr);
        if (read == -1) {
            this.availableBytes = 0;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.delegate.read(bArr, i, i2);
        if (read == -1) {
            this.availableBytes = 0;
        }
        return read;
    }
}
