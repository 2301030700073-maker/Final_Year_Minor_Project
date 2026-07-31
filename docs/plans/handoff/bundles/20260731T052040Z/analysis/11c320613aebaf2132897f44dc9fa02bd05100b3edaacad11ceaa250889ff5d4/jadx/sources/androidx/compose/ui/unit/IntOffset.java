package androidx.compose.ui.unit;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IntOffset {
    public final long packedValue;

    public /* synthetic */ IntOffset(long j) {
        this.packedValue = j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m445equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: minus-qkQi6aY, reason: not valid java name */
    public static final long m446minusqkQi6aY(long j, long j2) {
        return ((((int) (j >> 32)) - ((int) (j2 >> 32))) << 32) | ((((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L))) & 4294967295L);
    }

    /* renamed from: plus-qkQi6aY, reason: not valid java name */
    public static final long m447plusqkQi6aY(long j, long j2) {
        return ((((int) (j >> 32)) + ((int) (j2 >> 32))) << 32) | ((((int) (j & 4294967295L)) + ((int) (j2 & 4294967295L))) & 4294967295L);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m448toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("(");
        sb.append((int) (j >> 32));
        sb.append(", ");
        return Modifier.CC.m(sb, (int) (j & 4294967295L), ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntOffset) {
            return this.packedValue == ((IntOffset) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m448toStringimpl(this.packedValue);
    }
}
