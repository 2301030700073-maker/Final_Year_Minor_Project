package okio;

import java.io.FileOutputStream;
import okhttp3.HttpUrl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final void write(Buffer buffer, long j) {
        HttpUrl.Companion.checkOffsetAndCount(buffer.size, 0L, j);
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
