package androidx.collection;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntIntPair {
    public final long packedValue;

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m8constructorimpl(int i, int i2) {
        return (i2 & 4294967295L) | (i << 32);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntIntPair) {
            return this.packedValue == ((IntIntPair) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        long j = this.packedValue;
        sb.append((int) (j >> 32));
        sb.append(", ");
        return Animation.CC.m(sb, (int) (j & 4294967295L), ')');
    }
}
