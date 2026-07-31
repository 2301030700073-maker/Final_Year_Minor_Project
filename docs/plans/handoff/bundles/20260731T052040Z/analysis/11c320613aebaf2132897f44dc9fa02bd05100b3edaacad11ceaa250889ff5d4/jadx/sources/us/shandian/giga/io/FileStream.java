package us.shandian.giga.io;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FileStream extends SharpStream {
    public RandomAccessFile source;

    public FileStream(File file) {
        this.source = new RandomAccessFile(file, "rw");
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long available() {
        try {
            return this.source.length() - this.source.getFilePointer();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canRead() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canSeek() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canWrite() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        RandomAccessFile randomAccessFile = this.source;
        if (randomAccessFile == null) {
            return;
        }
        try {
            randomAccessFile.close();
        } catch (IOException unused) {
        }
        this.source = null;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean isClosed() {
        return this.source == null;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long length() {
        return this.source.length();
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read() {
        return this.source.read();
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void rewind() {
        this.source.seek(0L);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void seek(long j) {
        this.source.seek(j);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void setLength(long j) {
        this.source.setLength(j);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long skip(long j) {
        return this.source.skipBytes((int) j);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte b) {
        this.source.write(b);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr) {
        this.source.write(bArr);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr) {
        return this.source.read(bArr);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr, int i, int i2) {
        this.source.write(bArr, i, i2);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.source.read(bArr, i, i2);
    }
}
