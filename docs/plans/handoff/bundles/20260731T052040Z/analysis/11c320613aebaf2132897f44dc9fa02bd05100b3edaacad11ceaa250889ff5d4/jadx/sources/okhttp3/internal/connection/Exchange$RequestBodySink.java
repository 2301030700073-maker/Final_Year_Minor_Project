package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Exchange$RequestBodySink implements Sink {
    public long bytesReceived;
    public boolean closed;
    public boolean completed;
    public final long contentLength;
    public final Sink delegate;
    public boolean invokeStartEvent;
    public final boolean isSocket;
    public final /* synthetic */ Latch this$0;

    public Exchange$RequestBodySink(Latch latch, Sink sink, long j, boolean z) {
        sink.getClass();
        this.this$0 = latch;
        this.delegate = sink;
        this.contentLength = j;
        this.isSocket = z;
        this.invokeStartEvent = z;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        long j = this.contentLength;
        if (j != -1 && this.bytesReceived != j) {
            throw new ProtocolException("unexpected end of stream");
        }
        try {
            close$okio$ForwardingSink();
            complete$1(null);
        } catch (IOException e) {
            IOException complete$1 = complete$1(e);
            complete$1.getClass();
            throw complete$1;
        }
    }

    public final void close$okio$ForwardingSink() {
        this.delegate.close();
    }

    public final IOException complete$1(IOException iOException) {
        if (this.completed) {
            return iOException;
        }
        this.completed = true;
        return Latch.bodyComplete$default(this.this$0, this.isSocket, iOException, 4);
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        try {
            flush$okio$ForwardingSink();
        } catch (IOException e) {
            IOException complete$1 = complete$1(e);
            complete$1.getClass();
            throw complete$1;
        }
    }

    public final void flush$okio$ForwardingSink() {
        this.delegate.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.delegate.timeout();
    }

    public final String toString() {
        return Exchange$RequestBodySink.class.getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // okio.Sink
    public final void write(long j, Buffer buffer) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return;
        }
        long j2 = this.contentLength;
        if (j2 != -1 && this.bytesReceived + j > j2) {
            throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + j));
        }
        try {
            if (this.invokeStartEvent) {
                this.invokeStartEvent = false;
                ((RealCall) this.this$0.lock).eventListener.getClass();
            }
            this.delegate.write(j, buffer);
            this.bytesReceived += j;
        } catch (IOException e) {
            IOException complete$1 = complete$1(e);
            complete$1.getClass();
            throw complete$1;
        }
    }
}
