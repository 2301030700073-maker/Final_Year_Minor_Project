package kotlinx.io;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.collections.ArraysKt___ArraysKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Buffer implements AutoCloseable, RawSink {
    public Segment head;
    public long sizeMut;
    public Segment tail;

    public final String toString() {
        long j = this.sizeMut;
        if (j == 0) {
            return "Buffer(size=0)";
        }
        int min = (int) Math.min(64L, j);
        StringBuilder sb = new StringBuilder((min * 2) + (this.sizeMut > 64 ? 1 : 0));
        int i = 0;
        for (Segment segment = this.head; segment != null; segment = segment.next) {
            int i2 = 0;
            while (i < min) {
                int i3 = segment.limit;
                int i4 = segment.pos;
                if (i2 < i3 - i4) {
                    int i5 = i2 + 1;
                    byte b = segment.data[i4 + i2];
                    i++;
                    char[] cArr = _UtilKt.HEX_DIGIT_CHARS;
                    sb.append(cArr[(b >> 4) & 15]);
                    sb.append(cArr[b & 15]);
                    i2 = i5;
                }
            }
        }
        if (this.sizeMut > 64) {
            sb.append((char) 8230);
        }
        return "Buffer(size=" + this.sizeMut + " hex=" + ((Object) sb) + ')';
    }

    public final /* synthetic */ Segment writableSegment() {
        Segment segment = this.tail;
        if (segment == null) {
            Segment take = SegmentPool.take();
            this.head = take;
            this.tail = take;
            return take;
        }
        if (segment.limit + 1 <= 8192 && segment.owner) {
            return segment;
        }
        Segment take2 = SegmentPool.take();
        segment.push$kotlinx_io_core(take2);
        this.tail = take2;
        return take2;
    }

    @Override // kotlinx.io.RawSink
    public final void write(Buffer buffer, long j) {
        Segment take;
        if (buffer == this) {
            UriKt$$ExternalSyntheticBUOutline0.m("source == this");
            return;
        }
        _UtilKt.checkOffsetAndCount(buffer.sizeMut, j);
        while (j > 0) {
            buffer.head.getClass();
            int i = 0;
            if (j < r0.limit - r0.pos) {
                Segment segment = this.tail;
                if (segment != null && segment.owner) {
                    long j2 = segment.limit + j;
                    RefCountingCopyTracker refCountingCopyTracker = segment.copyTracker;
                    if (j2 - ((refCountingCopyTracker == null || refCountingCopyTracker.copyCount <= 0) ? segment.pos : 0) <= 8192) {
                        Segment segment2 = buffer.head;
                        segment2.getClass();
                        segment2.writeTo$kotlinx_io_core(segment, (int) j);
                        buffer.sizeMut -= j;
                        this.sizeMut += j;
                        return;
                    }
                }
                Segment segment3 = buffer.head;
                segment3.getClass();
                int i2 = (int) j;
                if (i2 <= 0 || i2 > segment3.limit - segment3.pos) {
                    UriKt$$ExternalSyntheticBUOutline0.m("byteCount out of range");
                    return;
                }
                if (i2 >= 1024) {
                    RefCountingCopyTracker refCountingCopyTracker2 = segment3.copyTracker;
                    if (refCountingCopyTracker2 == null) {
                        Segment segment4 = SegmentPool.LOCK;
                        refCountingCopyTracker2 = new RefCountingCopyTracker();
                        segment3.copyTracker = refCountingCopyTracker2;
                    }
                    byte[] bArr = segment3.data;
                    int i3 = segment3.pos;
                    int i4 = segment3.limit;
                    RefCountingCopyTracker.fieldUpdater.incrementAndGet(refCountingCopyTracker2);
                    take = new Segment(bArr, i3, i4, refCountingCopyTracker2);
                } else {
                    take = SegmentPool.take();
                    byte[] bArr2 = segment3.data;
                    byte[] bArr3 = take.data;
                    int i5 = segment3.pos;
                    ArraysKt___ArraysKt.copyInto(0, i5, i5 + i2, bArr2, bArr3);
                }
                take.limit = take.pos + i2;
                segment3.pos += i2;
                Segment segment5 = segment3.prev;
                if (segment5 != null) {
                    segment5.push$kotlinx_io_core(take);
                } else {
                    take.next = segment3;
                    segment3.prev = take;
                }
                buffer.head = take;
            }
            Segment segment6 = buffer.head;
            segment6.getClass();
            long j3 = segment6.limit - segment6.pos;
            Segment pop$kotlinx_io_core = segment6.pop$kotlinx_io_core();
            buffer.head = pop$kotlinx_io_core;
            if (pop$kotlinx_io_core == null) {
                buffer.tail = null;
            }
            if (this.head == null) {
                this.head = segment6;
                this.tail = segment6;
            } else {
                Segment segment7 = this.tail;
                segment7.getClass();
                segment7.push$kotlinx_io_core(segment6);
                Segment segment8 = segment6.prev;
                if (segment8 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("cannot compact");
                    return;
                }
                if (segment8.owner) {
                    int i6 = segment6.limit - segment6.pos;
                    int i7 = 8192 - segment8.limit;
                    segment8.getClass();
                    RefCountingCopyTracker refCountingCopyTracker3 = segment8.copyTracker;
                    if (refCountingCopyTracker3 == null || refCountingCopyTracker3.copyCount <= 0) {
                        Segment segment9 = segment6.prev;
                        segment9.getClass();
                        i = segment9.pos;
                    }
                    if (i6 <= i7 + i) {
                        Segment segment10 = segment6.prev;
                        segment10.getClass();
                        segment6.writeTo$kotlinx_io_core(segment10, i6);
                        if (segment6.pop$kotlinx_io_core() != null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                            return;
                        } else {
                            SegmentPool.recycle(segment6);
                            segment6 = segment10;
                        }
                    }
                }
                this.tail = segment6;
                if (segment6.prev == null) {
                    this.head = segment6;
                }
            }
            buffer.sizeMut -= j3;
            this.sizeMut += j3;
            j -= j3;
        }
    }

    @Override // java.lang.AutoCloseable, kotlinx.io.RawSink
    public final void close() {
    }

    @Override // kotlinx.io.RawSink, java.io.Flushable
    public final void flush() {
    }
}
