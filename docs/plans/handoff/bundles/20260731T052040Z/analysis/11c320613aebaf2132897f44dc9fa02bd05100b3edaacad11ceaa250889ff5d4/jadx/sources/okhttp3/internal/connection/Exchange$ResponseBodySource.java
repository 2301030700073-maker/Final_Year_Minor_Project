package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http.ExchangeCodec;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Exchange$ResponseBodySource extends ForwardingSource {
    public long bytesReceived;
    public boolean closed;
    public boolean completed;
    public final long contentLength;
    public boolean invokeStartEvent;
    public final boolean isSocket;
    public final /* synthetic */ Latch this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Exchange$ResponseBodySource(Latch latch, Source source, long j, boolean z) {
        super(source);
        source.getClass();
        this.this$0 = latch;
        this.contentLength = j;
        this.isSocket = z;
        this.invokeStartEvent = true;
        if (j == 0) {
            complete(null);
        }
    }

    @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        try {
            super.close();
            complete(null);
        } catch (IOException e) {
            IOException complete = complete(e);
            complete.getClass();
            throw complete;
        }
    }

    public final IOException complete(IOException iOException) {
        if (this.completed) {
            return iOException;
        }
        this.completed = true;
        if (iOException == null && this.invokeStartEvent) {
            this.invokeStartEvent = false;
            ((RealCall) this.this$0.lock).eventListener.getClass();
        }
        return Latch.bodyComplete$default(this.this$0, this.isSocket, iOException, 8);
    }

    @Override // okio.ForwardingSource, okio.Source
    public final long read(long j, Buffer buffer) {
        buffer.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
            return 0L;
        }
        try {
            long read = this.delegate.read(j, buffer);
            if (this.invokeStartEvent) {
                this.invokeStartEvent = false;
                ((RealCall) this.this$0.lock).eventListener.getClass();
            }
            if (read == -1) {
                complete(null);
                return -1L;
            }
            long j2 = this.bytesReceived + read;
            long j3 = this.contentLength;
            if (j3 != -1 && j2 > j3) {
                throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j2);
            }
            this.bytesReceived = j2;
            if (((ExchangeCodec) this.this$0.spareList).isResponseComplete()) {
                complete(null);
            }
            return read;
        } catch (IOException e) {
            IOException complete = complete(e);
            complete.getClass();
            throw complete;
        }
    }
}
