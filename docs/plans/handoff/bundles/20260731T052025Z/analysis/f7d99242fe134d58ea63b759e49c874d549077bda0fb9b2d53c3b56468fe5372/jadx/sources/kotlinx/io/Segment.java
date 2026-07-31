package kotlinx.io;

import kotlin.collections.ArraysKt___ArraysKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Segment {
    public RefCountingCopyTracker copyTracker;
    public final byte[] data;
    public int limit;
    public Segment next;
    public boolean owner;
    public int pos;
    public Segment prev;

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.copyTracker = null;
    }

    public final Segment pop$kotlinx_io_core() {
        Segment segment = this.next;
        Segment segment2 = this.prev;
        if (segment2 != null) {
            segment2.getClass();
            segment2.next = this.next;
        }
        Segment segment3 = this.next;
        if (segment3 != null) {
            segment3.getClass();
            segment3.prev = this.prev;
        }
        this.next = null;
        this.prev = null;
        return segment;
    }

    public final void push$kotlinx_io_core(Segment segment) {
        segment.getClass();
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        if (segment2 != null) {
            segment2.prev = segment;
        }
        this.next = segment;
    }

    public final void writeTo$kotlinx_io_core(Segment segment, int i) {
        segment.getClass();
        if (!segment.owner) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("only owner can write");
            return;
        }
        if (segment.limit + i > 8192) {
            RefCountingCopyTracker refCountingCopyTracker = segment.copyTracker;
            if (refCountingCopyTracker != null && refCountingCopyTracker.copyCount > 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                return;
            }
            int i2 = segment.limit;
            int i3 = segment.pos;
            if ((i2 + i) - i3 > 8192) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                return;
            }
            byte[] bArr = segment.data;
            ArraysKt___ArraysKt.copyInto(0, i3, i2, bArr, bArr);
            segment.limit -= segment.pos;
            segment.pos = 0;
        }
        byte[] bArr2 = this.data;
        byte[] bArr3 = segment.data;
        int i4 = segment.limit;
        int i5 = this.pos;
        ArraysKt___ArraysKt.copyInto(i4, i5, i5 + i, bArr2, bArr3);
        segment.limit += i;
        this.pos += i;
    }

    public Segment(byte[] bArr, int i, int i2, RefCountingCopyTracker refCountingCopyTracker) {
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.copyTracker = refCountingCopyTracker;
        this.owner = false;
    }
}
