package kotlin.ranges;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LongRange implements Iterable, KMappedMarker {
    public final long first;
    public final long last;
    public final long step;

    public LongRange(long j, long j2) {
        this.first = j;
        if (j < j2) {
            long j3 = j2 % 1;
            long j4 = j % 1;
            long j5 = ((j3 < 0 ? j3 + 1 : j3) - (j4 < 0 ? j4 + 1 : j4)) % 1;
            j2 -= j5 < 0 ? j5 + 1 : j5;
        }
        this.last = j2;
        this.step = 1L;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LongRange)) {
            return false;
        }
        long j = this.first;
        long j2 = this.last;
        if (j > j2) {
            LongRange longRange = (LongRange) obj;
            if (longRange.first > longRange.last) {
                return true;
            }
        }
        LongRange longRange2 = (LongRange) obj;
        return j == longRange2.first && j2 == longRange2.last;
    }

    public final int hashCode() {
        long j = this.first;
        long j2 = this.last;
        if (j > j2) {
            return -1;
        }
        return (((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new LongProgressionIterator(this.first, this.last, this.step);
    }

    public final String toString() {
        return this.first + ".." + this.last;
    }
}
