package androidx.compose.foundation.lazy.grid;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GridItemSpan {
    public final long packedValue;

    public final boolean equals(Object obj) {
        if (obj instanceof GridItemSpan) {
            return this.packedValue == ((GridItemSpan) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return "GridItemSpan(packedValue=" + this.packedValue + ')';
    }
}
