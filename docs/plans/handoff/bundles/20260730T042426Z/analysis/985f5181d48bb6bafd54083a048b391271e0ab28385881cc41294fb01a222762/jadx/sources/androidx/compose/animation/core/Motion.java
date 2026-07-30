package androidx.compose.animation.core;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: SpringSimulation.kt */
/* loaded from: classes.dex */
public abstract class Motion {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m59constructorimpl(long j) {
        return j;
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    public static final float m60getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getVelocity-impl, reason: not valid java name */
    public static final float m61getVelocityimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }
}
