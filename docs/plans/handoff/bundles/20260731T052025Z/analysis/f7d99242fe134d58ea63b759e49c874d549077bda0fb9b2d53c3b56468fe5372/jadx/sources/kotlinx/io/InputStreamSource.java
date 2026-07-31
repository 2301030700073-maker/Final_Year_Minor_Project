package kotlinx.io;

import java.io.IOException;
import java.io.InputStream;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InputStreamSource implements AutoCloseable {
    public final InputStream input;

    public InputStreamSource(InputStream inputStream) {
        this.input = inputStream;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.input.close();
    }

    public final long readAtMostTo(Buffer buffer) {
        try {
            Segment writableSegment = buffer.writableSegment();
            byte[] bArr = writableSegment.data;
            long read = this.input.read(bArr, writableSegment.limit, (int) Math.min(8192L, bArr.length - r4));
            int i = read == -1 ? 0 : (int) read;
            if (i == 1) {
                writableSegment.limit += i;
                buffer.sizeMut += i;
                return read;
            }
            if (i >= 0) {
                int length = bArr.length;
                int i2 = writableSegment.limit;
                if (i <= length - i2) {
                    if (i != 0) {
                        writableSegment.limit = i2 + i;
                        buffer.sizeMut += i;
                        return read;
                    }
                    if (i2 - writableSegment.pos == 0) {
                        Segment segment = buffer.tail;
                        segment.getClass();
                        Segment segment2 = segment.prev;
                        buffer.tail = segment2;
                        if (segment2 == null) {
                            buffer.head = null;
                        } else {
                            segment2.next = null;
                        }
                        segment.prev = null;
                        SegmentPool.recycle(segment);
                    }
                    return read;
                }
            }
            throw new IllegalStateException(("Invalid number of bytes written: " + i + ". Should be in 0.." + (bArr.length - writableSegment.limit)).toString());
        } catch (AssertionError e) {
            if (e.getCause() != null) {
                String message = e.getMessage();
                if (message != null ? StringsKt.contains(message, "getsockname failed", false) : false) {
                    throw new IOException(e);
                }
            }
            throw e;
        }
    }

    public final String toString() {
        return "RawSource(" + this.input + ')';
    }
}
