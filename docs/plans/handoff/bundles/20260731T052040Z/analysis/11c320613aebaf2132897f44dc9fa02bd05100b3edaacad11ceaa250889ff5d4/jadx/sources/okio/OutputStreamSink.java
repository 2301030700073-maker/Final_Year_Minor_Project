package okio;

import java.io.FileOutputStream;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OutputStreamSink implements Sink {
    public final FileOutputStream out;
    public final Timeout timeout;

    public OutputStreamSink(FileOutputStream fileOutputStream, Timeout timeout) {
        this.out = fileOutputStream;
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
    public final void write(long j, Buffer buffer) {
        UStringsKt.checkOffsetAndCount(buffer.size, 0L, j);
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
