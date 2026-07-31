package androidx.compose.foundation.lazy.grid;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
