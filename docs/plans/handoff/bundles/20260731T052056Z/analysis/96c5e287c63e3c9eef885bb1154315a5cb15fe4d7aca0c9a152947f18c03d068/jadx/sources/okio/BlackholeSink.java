package okio;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BlackholeSink implements Sink {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BlackholeSink(int i) {
        this.$r8$classId = i;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.$r8$classId;
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        int i = this.$r8$classId;
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        switch (this.$r8$classId) {
            case 0:
                return Timeout.NONE;
            default:
                return new Timeout();
        }
    }

    @Override // okio.Sink
    public final void write(Buffer buffer, long j) {
        switch (this.$r8$classId) {
            case 0:
                buffer.skip(j);
                break;
        }
    }

    private final void close$okio$BlackholeSink() {
    }

    private final void close$org$wikipedia$savedpages$SavedPageSyncService$reqSaveUrl$2$1$1() {
    }

    private final void flush$okio$BlackholeSink() {
    }

    private final void flush$org$wikipedia$savedpages$SavedPageSyncService$reqSaveUrl$2$1$1() {
    }

    private final void write$org$wikipedia$savedpages$SavedPageSyncService$reqSaveUrl$2$1$1(Buffer buffer, long j) {
    }
}
