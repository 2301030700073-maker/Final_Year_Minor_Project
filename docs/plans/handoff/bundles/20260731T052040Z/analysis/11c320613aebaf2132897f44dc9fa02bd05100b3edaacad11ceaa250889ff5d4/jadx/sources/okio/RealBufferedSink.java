package okio;

import java.nio.ByteBuffer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                sink.write(j, buffer);
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return null;
        }
        Buffer buffer = this.bufferField;
        long completeSegmentByteCount = buffer.completeSegmentByteCount();
        if (completeSegmentByteCount > 0) {
            this.sink.write(completeSegmentByteCount, buffer);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return;
        }
        Buffer buffer = this.bufferField;
        long j = buffer.size;
        Sink sink = this.sink;
        if (j > 0) {
            sink.write(j, buffer);
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return 0;
        }
        int write = this.bufferField.write(byteBuffer);
        emitCompleteSegments();
        return write;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeByte(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return null;
        }
        this.bufferField.m714writeByte(i);
        emitCompleteSegments();
        return this;
    }

    public final BufferedSink writeDecimalLong(long j) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return null;
        }
        this.bufferField.writeDecimalLong(j);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeInt(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return null;
        }
        this.bufferField.m715writeInt(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeShort(int i) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return null;
        }
        this.bufferField.m716writeShort(i);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeUtf8(String str) {
        str.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return null;
        }
        this.bufferField.m717writeUtf8(str);
        emitCompleteSegments();
        return this;
    }

    @Override // okio.Sink
    public final void write(long j, Buffer buffer) {
        buffer.getClass();
        if (!this.closed) {
            this.bufferField.write(j, buffer);
            emitCompleteSegments();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(ByteString byteString) {
        byteString.getClass();
        if (!this.closed) {
            this.bufferField.m713write(byteString);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        if (!this.closed) {
            this.bufferField.write(bArr.length, bArr);
            emitCompleteSegments();
            return this;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
        return null;
    }
}
