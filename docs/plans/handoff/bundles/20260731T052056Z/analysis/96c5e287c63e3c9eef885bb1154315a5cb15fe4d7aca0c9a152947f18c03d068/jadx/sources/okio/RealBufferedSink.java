package okio;

import java.nio.ByteBuffer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealBufferedSink implements BufferedSink {
    public final Buffer bufferField;
    public boolean closed;
    public final Sink sink;

    public RealBufferedSink(Sink sink) {
        sink.getClass();
        this.sink = sink;
        this.bufferField = new Buffer();
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Sink sink = this.sink;
        if (this.closed) {
            return;
        }
        try {
            Buffer buffer = this.bufferField;
            long j = buffer.size;
            if (j > 0) {
                sink.write(buffer, j);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            sink.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.closed = true;
        if (th != null) {
            throw th;
        }
    }

    public final BufferedSink emitCompleteSegments() {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return null;
        }
        Buffer buffer = this.bufferField;
        long completeSegmentByteCount = buffer.completeSegmentByteCount();
        if (completeSegmentByteCount > 0) {
            this.sink.write(buffer, completeSegmentByteCount);
        }
        return this;
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return;
        }
        Buffer buffer = this.bufferField;
        long j = buffer.size;
        Sink sink = this.sink;
        if (j > 0) {
            sink.write(buffer, j);
        }
        sink.flush();
    }

    @Override // okio.BufferedSink
    public final Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.sink.timeout();
    }

    public final String toString() {
        return "buffer(" + this.sink + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return 0;
        }
        int write = this.bufferField.write(byteBuffer);
        emitCompleteSegments();
        return write;
    }

    @Override // okio.BufferedSink
    public final long writeAll(Source source) {
        long j = 0;
        while (true) {
            long read = ((Buffer) source).read(this.bufferField, 8192L);
            if (read == -1) {
                return j;
            }
            j += read;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeByte(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return null;
        }
        this.bufferField.m877writeByte(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeDecimalLong(long j) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return null;
        }
        this.bufferField.m878writeDecimalLong(j);
        emitCompleteSegments();
        return this;
    }

    public final BufferedSink writeInt(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return null;
        }
        this.bufferField.writeInt(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeUtf8(String str) {
        str.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return null;
        }
        this.bufferField.m879writeUtf8(str);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.Sink
    public final void write(Buffer buffer, long j) {
        buffer.getClass();
        if (!this.closed) {
            this.bufferField.write(buffer, j);
            emitCompleteSegments();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(ByteString byteString) {
        byteString.getClass();
        if (!this.closed) {
            this.bufferField.m876write(byteString);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        bArr.getClass();
        if (!this.closed) {
            this.bufferField.m875write(bArr.length, bArr);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(int i, byte[] bArr) {
        if (!this.closed) {
            this.bufferField.m875write(i, bArr);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
        return null;
    }
}
