package kotlin.ranges;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LongRange extends LongProgression {
    static {
        new LongRange(1L, 0L);
    }

    public LongRange(long j, long j2) {
        super(j, j2, 1L);
    }

    @Override // kotlin.ranges.LongProgression
    public final boolean equals(Object obj) {
        if (!(obj instanceof LongRange)) {
            return false;
        }
        if (isEmpty() && ((LongRange) obj).isEmpty()) {
            return true;
        }
        LongRange longRange = (LongRange) obj;
        return this.first == longRange.first && this.last == longRange.last;
    }

    @Override // kotlin.ranges.LongProgression
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j = this.first;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.last;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }

    @Override // kotlin.ranges.LongProgression
    public final boolean isEmpty() {
        return this.first > this.last;
    }

    @Override // kotlin.ranges.LongProgression
    public final String toString() {
        return this.first + ".." + this.last;
    }
}
