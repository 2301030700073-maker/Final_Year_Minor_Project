package okio;

import java.nio.ByteBuffer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return null;
        }
        Buffer buffer = this.bufferField;
        long completeSegmentByteCount = buffer.completeSegmentByteCount();
        if (completeSegmentByteCount > 0) {
            this.sink.write(buffer, completeSegmentByteCount);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return 0;
        }
        int write = this.bufferField.write(byteBuffer);
        emitCompleteSegments();
        return write;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeByte(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return null;
        }
        this.bufferField.m1053writeByte(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeDecimalLong(long j) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return null;
        }
        this.bufferField.m1054writeDecimalLong(j);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeInt(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return null;
        }
        this.bufferField.m1055writeInt(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeShort(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return null;
        }
        this.bufferField.m1056writeShort(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeUtf8(String str) {
        str.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return null;
        }
        this.bufferField.m1057writeUtf8(str);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(ByteString byteString) {
        byteString.getClass();
        if (!this.closed) {
            this.bufferField.m1052write(byteString);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        if (!this.closed) {
            this.bufferField.write(bArr.length, bArr);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
        return null;
    }
}
