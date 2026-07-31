package us.shandian.giga.io;

import java.io.IOException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.streams.io.SharpStream;
import us.shandian.giga.postprocessing.Postprocessing$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ChunkFileInputStream extends SharpStream {
    public final long length;
    public final long offset;
    public final Postprocessing$$ExternalSyntheticLambda3 onProgress;
    public long position = 0;
    public long progressReport = 262144;
    public SharpStream source;

    public ChunkFileInputStream(SharpStream sharpStream, long j, long j2, Postprocessing$$ExternalSyntheticLambda3 postprocessing$$ExternalSyntheticLambda3) {
        this.source = sharpStream;
        this.offset = j;
        long j3 = j2 - j;
        this.length = j3;
        this.onProgress = postprocessing$$ExternalSyntheticLambda3;
        if (j3 < 1) {
            sharpStream.close();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("The chunk is empty or invalid");
            throw null;
        }
        if (sharpStream.length() >= j2) {
            this.source.seek(j);
            return;
        }
        try {
            throw new IOException("invalid file length. expected = " + j2 + "  found = " + this.source.length());
        } catch (Throwable th) {
            this.source.close();
            throw th;
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long available() {
        return this.length - this.position;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canRead() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canWrite() {
        return false;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.source.close();
        this.source = null;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean isClosed() {
        return this.source == null;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.position;
        long j2 = i2 + j;
        long j3 = this.length;
        if (j2 > j3) {
            i2 = (int) (j3 - j);
        }
        if (i2 == 0) {
            return 0;
        }
        int read = this.source.read(bArr, i, i2);
        long j4 = this.position + read;
        this.position = j4;
        if (j4 > this.progressReport) {
            this.onProgress.report(j4);
            this.progressReport = this.position + 262144;
        }
        return read;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void rewind() {
        this.position = 0L;
        this.source.seek(this.offset);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long skip(long j) {
        long min = Math.min(j + this.position, this.length);
        if (min == 0) {
            return 0L;
        }
        this.source.seek(this.offset + min);
        long j2 = this.position;
        this.position = min;
        return min - j2;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr) {
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr, int i, int i2) {
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read() {
        if (this.position + 1 > this.length) {
            return 0;
        }
        int read = this.source.read();
        if (read >= 0) {
            this.position++;
        }
        return read;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte b) {
    }
}
