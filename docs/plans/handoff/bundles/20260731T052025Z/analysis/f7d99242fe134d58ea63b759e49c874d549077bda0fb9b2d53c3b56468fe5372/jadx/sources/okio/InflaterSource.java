package okio;

import java.util.zip.Inflater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InflaterSource implements Source {
    public int bufferBytesHeldByInflater;
    public boolean closed;
    public final Inflater inflater;
    public final RealBufferedSource source;

    public InflaterSource(RealBufferedSource realBufferedSource, Inflater inflater) {
        this.source = realBufferedSource;
        this.inflater = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.closed) {
            return;
        }
        this.inflater.end();
        this.closed = true;
        this.source.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082 A[SYNTHETIC] */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long read(okio.Buffer r11, long r12) {
        /*
            r10 = this;
            r11.getClass()
        L3:
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 < 0) goto Lb0
            boolean r3 = r10.closed
            if (r3 != 0) goto Laa
            okio.RealBufferedSource r3 = r10.source
            java.util.zip.Inflater r4 = r10.inflater
            if (r2 != 0) goto L15
        L13:
            r8 = r0
            goto L7e
        L15:
            r2 = 1
            okio.Segment r2 = r11.writableSegment$okio(r2)     // Catch: java.util.zip.DataFormatException -> La3
            int r5 = r2.limit     // Catch: java.util.zip.DataFormatException -> La3
            int r5 = 8192 - r5
            long r5 = (long) r5     // Catch: java.util.zip.DataFormatException -> La3
            long r5 = java.lang.Math.min(r12, r5)     // Catch: java.util.zip.DataFormatException -> La3
            int r5 = (int) r5     // Catch: java.util.zip.DataFormatException -> La3
            boolean r6 = r4.needsInput()     // Catch: java.util.zip.DataFormatException -> La3
            if (r6 != 0) goto L2b
            goto L45
        L2b:
            boolean r6 = r3.exhausted()     // Catch: java.util.zip.DataFormatException -> La3
            if (r6 == 0) goto L32
            goto L45
        L32:
            okio.Buffer r6 = r3.bufferField     // Catch: java.util.zip.DataFormatException -> La3
            okio.Segment r6 = r6.head     // Catch: java.util.zip.DataFormatException -> La3
            r6.getClass()     // Catch: java.util.zip.DataFormatException -> La3
            int r7 = r6.limit     // Catch: java.util.zip.DataFormatException -> La3
            int r8 = r6.pos     // Catch: java.util.zip.DataFormatException -> La3
            int r7 = r7 - r8
            r10.bufferBytesHeldByInflater = r7     // Catch: java.util.zip.DataFormatException -> La3
            byte[] r6 = r6.data     // Catch: java.util.zip.DataFormatException -> La3
            r4.setInput(r6, r8, r7)     // Catch: java.util.zip.DataFormatException -> La3
        L45:
            byte[] r6 = r2.data     // Catch: java.util.zip.DataFormatException -> La3
            int r7 = r2.limit     // Catch: java.util.zip.DataFormatException -> La3
            int r5 = r4.inflate(r6, r7, r5)     // Catch: java.util.zip.DataFormatException -> La3
            int r6 = r10.bufferBytesHeldByInflater     // Catch: java.util.zip.DataFormatException -> La3
            if (r6 != 0) goto L52
            goto L60
        L52:
            int r7 = r4.getRemaining()     // Catch: java.util.zip.DataFormatException -> La3
            int r6 = r6 - r7
            int r7 = r10.bufferBytesHeldByInflater     // Catch: java.util.zip.DataFormatException -> La3
            int r7 = r7 - r6
            r10.bufferBytesHeldByInflater = r7     // Catch: java.util.zip.DataFormatException -> La3
            long r6 = (long) r6     // Catch: java.util.zip.DataFormatException -> La3
            r3.skip(r6)     // Catch: java.util.zip.DataFormatException -> La3
        L60:
            if (r5 <= 0) goto L6e
            int r6 = r2.limit     // Catch: java.util.zip.DataFormatException -> La3
            int r6 = r6 + r5
            r2.limit = r6     // Catch: java.util.zip.DataFormatException -> La3
            long r6 = r11.size     // Catch: java.util.zip.DataFormatException -> La3
            long r8 = (long) r5     // Catch: java.util.zip.DataFormatException -> La3
            long r6 = r6 + r8
            r11.size = r6     // Catch: java.util.zip.DataFormatException -> La3
            goto L7e
        L6e:
            int r5 = r2.pos     // Catch: java.util.zip.DataFormatException -> La3
            int r6 = r2.limit     // Catch: java.util.zip.DataFormatException -> La3
            if (r5 != r6) goto L13
            okio.Segment r5 = r2.pop()     // Catch: java.util.zip.DataFormatException -> La3
            r11.head = r5     // Catch: java.util.zip.DataFormatException -> La3
            okio.SegmentPool.recycle(r2)     // Catch: java.util.zip.DataFormatException -> La3
            goto L13
        L7e:
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 <= 0) goto L83
            return r8
        L83:
            boolean r0 = r4.finished()
            if (r0 != 0) goto La0
            boolean r0 = r4.needsDictionary()
            if (r0 == 0) goto L90
            goto La0
        L90:
            boolean r0 = r3.exhausted()
            if (r0 != 0) goto L98
            goto L3
        L98:
            java.io.EOFException r10 = new java.io.EOFException
            java.lang.String r11 = "source exhausted prematurely"
            r10.<init>(r11)
            throw r10
        La0:
            r10 = -1
            return r10
        La3:
            r10 = move-exception
            java.io.IOException r11 = new java.io.IOException
            r11.<init>(r10)
            throw r11
        Laa:
            java.lang.String r10 = "closed"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r0
        Lb0:
            java.lang.String r10 = "byteCount < 0: "
            java.lang.String r10 = androidx.camera.camera2.pipe.CameraDevices$CC.m(r12, r10)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.InflaterSource.read(okio.Buffer, long):long");
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.source.source.timeout();
    }
}
