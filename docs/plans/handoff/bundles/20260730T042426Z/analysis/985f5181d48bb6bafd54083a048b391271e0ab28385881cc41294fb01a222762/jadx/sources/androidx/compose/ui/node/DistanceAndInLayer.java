package androidx.compose.ui.node;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: HitTestResult.kt */
/* loaded from: classes.dex */
abstract class DistanceAndInLayer {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1805constructorimpl(long j) {
        return j;
    }

    /* renamed from: isInLayer-impl, reason: not valid java name */
    public static final boolean m1807isInLayerimpl(long j) {
        return ((int) (j & BodyPartID.bodyIdMax)) != 0;
    }

    /* renamed from: getDistance-impl, reason: not valid java name */
    public static final float m1806getDistanceimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: compareTo-S_HNhKs, reason: not valid java name */
    public static final int m1804compareToS_HNhKs(long j, long j2) {
        boolean m1807isInLayerimpl = m1807isInLayerimpl(j);
        if (m1807isInLayerimpl != m1807isInLayerimpl(j2)) {
            return m1807isInLayerimpl ? -1 : 1;
        }
        return (int) Math.signum(m1806getDistanceimpl(j) - m1806getDistanceimpl(j2));
    }
}
