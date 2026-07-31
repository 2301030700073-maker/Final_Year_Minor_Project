package coil3.disk;

import java.io.IOException;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okio.Buffer;
import okio.ForwardingTimeout;
import okio.RealBufferedSink;
import okio.Sink;
import okio.Timeout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FaultHidingSink implements Sink {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object delegate;
    public boolean hasErrors;
    public final Object onException;

    public FaultHidingSink(Http1ExchangeCodec http1ExchangeCodec) {
        this.onException = http1ExchangeCodec;
        this.delegate = new ForwardingTimeout(((RealBufferedSink) http1ExchangeCodec.socket.parts).sink.timeout());
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
                    ((RealBufferedSink) ((Http1ExchangeCodec) obj).socket.parts).flush();
                    break;
                }
                break;
        }
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        int i = this.$r8$classId;
        Object obj = this.delegate;
        switch (i) {
            case 0:
                return ((Sink) obj).timeout();
            default:
                return (ForwardingTimeout) obj;
        }
    }

    @Override // okio.Sink
    public final void write(Buffer buffer, long j) {
        int i = this.$r8$classId;
        Object obj = this.onException;
        switch (i) {
            case 0:
                if (this.hasErrors) {
                    buffer.skip(j);
                    break;
                } else {
                    try {
                        ((Sink) this.delegate).write(buffer, j);
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
                    ((RealBufferedSink) ((Http1ExchangeCodec) obj).socket.parts).write(buffer, j);
                    break;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
                    break;
                }
        }
    }

    public FaultHidingSink(Sink sink, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0) {
        this.delegate = sink;
        this.onException = diskLruCache$$ExternalSyntheticLambda0;
    }
}
