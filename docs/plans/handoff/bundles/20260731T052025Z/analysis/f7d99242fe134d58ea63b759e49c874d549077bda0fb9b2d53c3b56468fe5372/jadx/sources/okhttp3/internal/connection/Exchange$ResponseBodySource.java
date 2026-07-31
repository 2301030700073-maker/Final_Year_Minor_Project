package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.ExchangeCodec;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        }
        return Latch.bodyComplete$default(this.this$0, this.isSocket, iOException, 8);
    }

    @Override // okio.ForwardingSource, okio.Source
    public final long read(Buffer buffer, long j) {
        Latch latch = this.this$0;
        buffer.getClass();
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
            return 0L;
        }
        try {
            long read = delegate().read(buffer, j);
            if (this.invokeStartEvent) {
                this.invokeStartEvent = false;
            }
            if (read == -1) {
                complete(null);
                return -1L;
            }
            long j2 = this.bytesReceived + read;
            long j3 = this.contentLength;
            if (j3 == -1 || j2 <= j3) {
                this.bytesReceived = j2;
                if (((ExchangeCodec) latch.spareList).isResponseComplete()) {
                    complete(null);
                }
                return read;
            }
            throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
        } catch (IOException e) {
            IOException complete = complete(e);
            complete.getClass();
            throw complete;
        }
    }
}
