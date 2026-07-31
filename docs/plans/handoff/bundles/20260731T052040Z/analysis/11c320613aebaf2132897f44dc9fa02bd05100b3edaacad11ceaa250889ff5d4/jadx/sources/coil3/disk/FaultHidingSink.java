package coil3.disk;

import java.io.IOException;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;
import okio.ForwardingTimeout;
import okio.RealBufferedSink;
import okio.Sink;
import okio.Timeout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FaultHidingSink implements Sink {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object delegate;
    public boolean hasErrors;
    public final Object onException;

    public FaultHidingSink(Http1ExchangeCodec http1ExchangeCodec) {
        this.onException = http1ExchangeCodec;
        this.delegate = new ForwardingTimeout(((RealBufferedSink) http1ExchangeCodec.socket.lastActivityManager).sink.timeout());
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.$r8$classId;
        Object obj = this.delegate;
        Object obj2 = this.onException;
        switch (i) {
            case 0:
                try {
                    ((Sink) obj).close();
                    break;
                } catch (IOException e) {
                    this.hasErrors = true;
                    ((DiskLruCache$$ExternalSyntheticLambda0) obj2).invoke(e);
                    return;
                }
            default:
                Http1ExchangeCodec http1ExchangeCodec = (Http1ExchangeCodec) obj2;
                if (!this.hasErrors) {
                    this.hasErrors = true;
                    ForwardingTimeout forwardingTimeout = (ForwardingTimeout) obj;
                    Timeout timeout = forwardingTimeout.delegate;
                    forwardingTimeout.delegate = Timeout.NONE;
                    timeout.clearDeadline();
                    timeout.clearTimeout();
                    http1ExchangeCodec.state = 3;
                    break;
                }
                break;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        int i = this.$r8$classId;
        Object obj = this.onException;
        switch (i) {
            case 0:
                try {
                    ((Sink) this.delegate).flush();
                    break;
                } catch (IOException e) {
                    this.hasErrors = true;
                    ((DiskLruCache$$ExternalSyntheticLambda0) obj).invoke(e);
                    return;
                }
            default:
                if (!this.hasErrors) {
                    ((RealBufferedSink) ((Http1ExchangeCodec) obj).socket.lastActivityManager).flush();
                    break;
                }
                break;
        }
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        switch (this.$r8$classId) {
            case 0:
                return ((Sink) this.delegate).timeout();
            default:
                return (ForwardingTimeout) this.delegate;
        }
    }

    @Override // okio.Sink
    public final void write(long j, Buffer buffer) {
        int i = this.$r8$classId;
        Object obj = this.onException;
        switch (i) {
            case 0:
                if (this.hasErrors) {
                    buffer.skip(j);
                    break;
                } else {
                    try {
                        ((Sink) this.delegate).write(j, buffer);
                        break;
                    } catch (IOException e) {
                        this.hasErrors = true;
                        ((DiskLruCache$$ExternalSyntheticLambda0) obj).invoke(e);
                        return;
                    }
                }
            default:
                if (!this.hasErrors) {
                    _UtilCommonKt.checkOffsetAndCount(buffer.size, 0L, j);
                    ((RealBufferedSink) ((Http1ExchangeCodec) obj).socket.lastActivityManager).write(j, buffer);
                    break;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                    break;
                }
        }
    }

    public FaultHidingSink(Sink sink, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0) {
        this.delegate = sink;
        this.onException = diskLruCache$$ExternalSyntheticLambda0;
    }
}
