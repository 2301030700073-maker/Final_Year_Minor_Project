package androidx.compose.ui.geometry;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Size.kt */
/* loaded from: classes.dex */
public abstract class SizeKt {
    public static final long Size(float f, float f2) {
        return Size.m1199constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }

    /* renamed from: toRect-uvyYCjk, reason: not valid java name */
    public static final Rect m1212toRectuvyYCjk(long j) {
        return RectKt.m1191Recttz77jQw(Offset.Companion.m1179getZeroF1C5BW0(), j);
    }

    /* renamed from: getCenter-uvyYCjk, reason: not valid java name */
    public static final long m1211getCenteruvyYCjk(long j) {
        if (j == 9205357640488583168L) {
            InlineClassHelperKt.throwIllegalStateException("Size is unspecified");
        }
        return OffsetKt.Offset(Float.intBitsToFloat((int) (j >> 32)) / 2.0f, Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) / 2.0f);
    }
}
