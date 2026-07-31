package androidx.compose.ui.unit;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntOffset {
    public final long packedValue;

    /* renamed from: copy-iSbpLlY$default, reason: not valid java name */
    public static long m714copyiSbpLlY$default(int i, int i2, int i3, long j) {
        if ((i3 & 1) != 0) {
            i = (int) (j >> 32);
        }
        if ((i3 & 2) != 0) {
            i2 = (int) (j & 4294967295L);
        }
        return (i2 & 4294967295L) | (i << 32);
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m715equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: minus-qkQi6aY, reason: not valid java name */
    public static final long m716minusqkQi6aY(long j, long j2) {
        return ((((int) (j >> 32)) - ((int) (j2 >> 32))) << 32) | ((((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L))) & 4294967295L);
    }

    /* renamed from: plus-qkQi6aY, reason: not valid java name */
    public static final long m717plusqkQi6aY(long j, long j2) {
        return ((((int) (j >> 32)) + ((int) (j2 >> 32))) << 32) | ((((int) (j & 4294967295L)) + ((int) (j2 & 4294967295L))) & 4294967295L);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m718toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("(");
        sb.append((int) (j >> 32));
        sb.append(", ");
        return Animation.CC.m(sb, (int) (j & 4294967295L), ')');
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
        return m718toStringimpl(this.packedValue);
    }
}
