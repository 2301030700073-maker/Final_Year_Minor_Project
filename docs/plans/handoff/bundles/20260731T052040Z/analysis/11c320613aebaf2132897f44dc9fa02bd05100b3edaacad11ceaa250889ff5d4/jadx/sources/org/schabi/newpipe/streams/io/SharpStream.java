package org.schabi.newpipe.streams.io;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import us.shandian.giga.io.CircularFileWriter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class SharpStream implements Closeable, Flushable {
    public abstract long available();

    public abstract boolean canRead();

    public boolean canSeek() {
        return this instanceof CircularFileWriter;
    }

    public abstract boolean canWrite();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract boolean isClosed();

    public long length() {
        throw new UnsupportedOperationException("Unsupported operation");
    }

    public abstract int read();

    public abstract int read(byte[] bArr);

    public abstract int read(byte[] bArr, int i, int i2);

    public abstract void rewind();

    public void seek(long j) {
        throw new IOException("Not implemented");
    }

    public void setLength(long j) {
        throw new IOException("Not implemented");
    }

    public abstract long skip(long j);

    public abstract void write(byte b);

    public abstract void write(byte[] bArr);

    public abstract void write(byte[] bArr, int i, int i2);

    @Override // java.io.Flushable
    public void flush() {
    }
}
