package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Exchange$RequestBodySink extends ForwardingSink {
    public long bytesReceived;
    public boolean closed;
    public boolean completed;
    public final long contentLength;
    public boolean invokeStartEvent;
    public final boolean isSocket;
    public final /* synthetic */ Latch this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Exchange$RequestBodySink(Latch latch, Sink sink, long j, boolean z) {
        super(sink);
        sink.getClass();
        this.this$0 = latch;
        this.contentLength = j;
        this.isSocket = z;
        this.invokeStartEvent = z;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
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
            super.close();
            complete$1(null);
        } catch (IOException e) {
            IOException complete$1 = complete$1(e);
            complete$1.getClass();
            throw complete$1;
        }
    }

    public final IOException complete$1(IOException iOException) {
        if (this.completed) {
            return iOException;
        }
        this.completed = true;
        return Latch.bodyComplete$default(this.this$0, this.isSocket, iOException, 4);
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public final void flush() {
        try {
            super.flush();
        } catch (IOException e) {
            IOException complete$1 = complete$1(e);
            complete$1.getClass();
            throw complete$1;
        }
    }

    @Override // okio.Sink
    public final void write(Buffer buffer, long j) {
        buffer.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return;
        }
        long j2 = this.contentLength;
        if (j2 != -1 && this.bytesReceived + j > j2) {
            throw new ProtocolException("expected " + j2 + " bytes but received " + (this.bytesReceived + j));
        }
        try {
            if (this.invokeStartEvent) {
                this.invokeStartEvent = false;
            }
            this.delegate.write(buffer, j);
            this.bytesReceived += j;
        } catch (IOException e) {
            IOException complete$1 = complete$1(e);
            complete$1.getClass();
            throw complete$1;
        }
    }
}
