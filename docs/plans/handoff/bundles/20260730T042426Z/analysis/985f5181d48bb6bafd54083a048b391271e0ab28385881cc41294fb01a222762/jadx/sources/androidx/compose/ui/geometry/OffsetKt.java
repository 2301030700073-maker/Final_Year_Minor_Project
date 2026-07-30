package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Offset.kt */
/* loaded from: classes.dex */
public abstract class OffsetKt {
    /* renamed from: isFinite-k-4lQ0M, reason: not valid java name */
    public static final boolean m1180isFinitek4lQ0M(long j) {
        long j2 = (j & 9187343241974906880L) ^ 9187343241974906880L;
        return (((~j2) & (j2 - 4294967297L)) & (-9223372034707292160L)) == 0;
    }

    /* renamed from: isSpecified-k-4lQ0M, reason: not valid java name */
    public static final boolean m1181isSpecifiedk4lQ0M(long j) {
        return (j & 9223372034707292159L) != 9205357640488583168L;
    }

    /* renamed from: isUnspecified-k-4lQ0M, reason: not valid java name */
    public static final boolean m1182isUnspecifiedk4lQ0M(long j) {
        return (j & 9223372034707292159L) == 9205357640488583168L;
    }

    /* renamed from: lerp-Wko1d7g, reason: not valid java name */
    public static final long m1183lerpWko1d7g(long j, long j2, float f) {
        float lerp = MathHelpersKt.lerp(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 >> 32)), f);
        float lerp2 = MathHelpersKt.lerp(Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)), f);
        return Offset.m1159constructorimpl((Float.floatToRawIntBits(lerp) << 32) | (Float.floatToRawIntBits(lerp2) & BodyPartID.bodyIdMax));
    }

    public static final long Offset(float f, float f2) {
        return Offset.m1159constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }
}
