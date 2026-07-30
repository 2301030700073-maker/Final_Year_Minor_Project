package androidx.collection;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: FloatFloatPair.kt */
/* loaded from: classes.dex */
public abstract class FloatFloatPair {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m18constructorimpl(long j) {
        return j;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m17constructorimpl(float f, float f2) {
        return m18constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }
}
