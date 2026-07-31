package okio;

import kotlin.collections.ArraysKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Segment {
    public final byte[] data;
    public int limit;
    public Segment next;
    public final boolean owner;
    public int pos;
    public Segment prev;
    public boolean shared;

    public Segment(byte[] bArr, int i, int i2, boolean z) {
        bArr.getClass();
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.shared = z;
        this.owner = false;
    }

    public final Segment pop() {
        Segment segment = this.next;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.prev;
        segment2.getClass();
        segment2.next = this.next;
        Segment segment3 = this.next;
        segment3.getClass();
        segment3.prev = this.prev;
        this.next = null;
        this.prev = null;
        return segment;
    }

    public final void push(Segment segment) {
        segment.getClass();
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        segment2.getClass();
        segment2.prev = segment;
        this.next = segment;
    }

    public final Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true);
    }

    public final void writeTo(Segment segment, int i) {
        segment.getClass();
        byte[] bArr = segment.data;
        if (!segment.owner) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("only owner can write");
            return;
        }
        int i2 = segment.limit;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (segment.shared) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            int i4 = segment.pos;
            if (i3 - i4 > 8192) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            } else {
                ArraysKt.copyInto(bArr, 0, i4, bArr, i2);
                segment.limit -= segment.pos;
                segment.pos = 0;
            }
        }
        int i5 = segment.limit;
        int i6 = this.pos;
        ArraysKt.copyInto(this.data, i5, i6, bArr, i6 + i);
        segment.limit += i;
        this.pos += i;
    }

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }
}
