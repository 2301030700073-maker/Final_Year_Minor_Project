package okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeekSource implements Source {
    public final Buffer buffer;
    public boolean closed;
    public int expectedPos;
    public Segment expectedSegment;
    public long pos;
    public final BufferedSource upstream;

    public PeekSource(BufferedSource bufferedSource) {
        this.upstream = bufferedSource;
        Buffer buffer = bufferedSource.getBuffer();
        this.buffer = buffer;
        Segment segment = buffer.head;
        this.expectedSegment = segment;
        this.expectedPos = segment != null ? segment.pos : -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.closed = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r3 == r5.pos) goto L15;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long read(long r9, okio.Buffer r11) {
        /*
            r8 = this;
            r11.getClass()
            r0 = 0
            int r2 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r2 < 0) goto L65
            boolean r3 = r8.closed
            if (r3 != 0) goto L5f
            okio.Segment r3 = r8.expectedSegment
            okio.Buffer r4 = r8.buffer
            if (r3 == 0) goto L27
            okio.Segment r5 = r4.head
            if (r3 != r5) goto L21
            int r3 = r8.expectedPos
            r5.getClass()
            int r5 = r5.pos
            if (r3 != r5) goto L21
            goto L27
        L21:
            java.lang.String r8 = "Peek source is invalid because upstream source was used"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r8)
            return r0
        L27:
            if (r2 != 0) goto L2a
            return r0
        L2a:
            long r0 = r8.pos
            r2 = 1
            long r0 = r0 + r2
            okio.BufferedSource r2 = r8.upstream
            boolean r0 = r2.request(r0)
            if (r0 != 0) goto L3a
            r8 = -1
            return r8
        L3a:
            okio.Segment r0 = r8.expectedSegment
            if (r0 != 0) goto L48
            okio.Segment r0 = r4.head
            if (r0 == 0) goto L48
            r8.expectedSegment = r0
            int r0 = r0.pos
            r8.expectedPos = r0
        L48:
            long r0 = r4.size
            long r2 = r8.pos
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r9, r0)
            okio.Buffer r2 = r8.buffer
            long r4 = r8.pos
            r3 = r11
            r2.copyTo(r3, r4, r6)
            long r9 = r8.pos
            long r9 = r9 + r6
            r8.pos = r9
            return r6
        L5f:
            java.lang.String r8 = "closed"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r8)
            return r0
        L65:
            java.lang.String r8 = "byteCount < 0: "
            java.lang.String r8 = androidx.compose.ui.Modifier.CC.m(r8, r9)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.PeekSource.read(long, okio.Buffer):long");
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.upstream.timeout();
    }
}
