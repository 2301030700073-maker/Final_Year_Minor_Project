package kotlinx.io;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.EOFException;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputStreamSink implements RawSink {
    public final OutputStream out;

    public OutputStreamSink(OutputStream outputStream) {
        this.out = outputStream;
    }

    @Override // kotlinx.io.RawSink
    public final void close() {
        this.out.close();
    }

    @Override // kotlinx.io.RawSink, java.io.Flushable
    public final void flush() {
        this.out.flush();
    }

    public final String toString() {
        return "RawSink(" + this.out + ')';
    }

    @Override // kotlinx.io.RawSink
    public final void write(Buffer buffer, long j) {
        long j2 = j;
        _UtilKt.checkOffsetAndCount(buffer.sizeMut, j2);
        while (true) {
            if (j2 <= 0) {
                return;
            }
            if (buffer.sizeMut == 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("Buffer is empty");
                return;
            }
            Segment segment = buffer.head;
            segment.getClass();
            byte[] bArr = segment.data;
            int i = segment.pos;
            int min = (int) Math.min(j2, segment.limit - i);
            this.out.write(bArr, i, min);
            if (min != 0) {
                if (min < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Returned negative read bytes count");
                    return;
                }
                if (min > segment.limit - segment.pos) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Returned too many bytes");
                    return;
                }
                long j3 = min;
                if (j3 < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("byteCount (", j3, ") < 0");
                    return;
                }
                long j4 = j3;
                for (long j5 = 0; j4 > j5; j5 = 0) {
                    Segment segment2 = buffer.head;
                    if (segment2 == null) {
                        throw new EOFException("Buffer exhausted before skipping " + j3 + " bytes.");
                    }
                    int min2 = (int) Math.min(j4, segment2.limit - segment2.pos);
                    long j6 = min2;
                    buffer.sizeMut -= j6;
                    j4 -= j6;
                    int i2 = segment2.pos + min2;
                    segment2.pos = i2;
                    if (i2 == segment2.limit) {
                        Segment segment3 = buffer.head;
                        segment3.getClass();
                        Segment segment4 = segment3.next;
                        buffer.head = segment4;
                        if (segment4 == null) {
                            buffer.tail = null;
                        } else {
                            segment4.prev = null;
                        }
                        segment3.next = null;
                        SegmentPool.recycle(segment3);
                    }
                }
            }
            j2 -= min;
        }
    }
}
