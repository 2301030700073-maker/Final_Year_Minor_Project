package okio;

import java.io.OutputStream;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputStreamSink implements Sink {
    public final OutputStream out;
    public final Timeout timeout;

    public OutputStreamSink(OutputStream outputStream, Timeout timeout) {
        this.out = outputStream;
        this.timeout = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.out.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        this.out.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.timeout;
    }

    public final String toString() {
        return "sink(" + this.out + ')';
    }

    @Override // okio.Sink
    public final void write(Buffer buffer, long j) {
        buffer.getClass();
        AtomicFU.checkOffsetAndCount(buffer.size, 0L, j);
        while (j > 0) {
            this.timeout.throwIfReached();
            Segment segment = buffer.head;
            segment.getClass();
            int min = (int) Math.min(j, segment.limit - segment.pos);
            this.out.write(segment.data, segment.pos, min);
            int i = segment.pos + min;
            segment.pos = i;
            long j2 = min;
            j -= j2;
            buffer.size -= j2;
            if (i == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }
}
