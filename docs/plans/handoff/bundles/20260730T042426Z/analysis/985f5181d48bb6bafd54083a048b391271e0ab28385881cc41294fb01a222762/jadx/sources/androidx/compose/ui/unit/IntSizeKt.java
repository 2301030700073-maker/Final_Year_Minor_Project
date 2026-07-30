package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: IntSize.kt */
/* loaded from: classes.dex */
public abstract class IntSizeKt {
    public static final long IntSize(int i, int i2) {
        return IntSize.m2480constructorimpl((i2 & BodyPartID.bodyIdMax) | (i << 32));
    }

    /* renamed from: getCenter-ozmzZPI, reason: not valid java name */
    public static final long m2489getCenterozmzZPI(long j) {
        return IntOffset.m2460constructorimpl((((j << 32) >> 33) & BodyPartID.bodyIdMax) | ((j >> 33) << 32));
    }

    /* renamed from: toSize-ozmzZPI, reason: not valid java name */
    public static final long m2491toSizeozmzZPI(long j) {
        return SizeKt.Size(IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j));
    }

    /* renamed from: roundToIntSize-uvyYCjk, reason: not valid java name */
    public static final long m2490roundToIntSizeuvyYCjk(long j) {
        return IntSize.m2480constructorimpl((Math.round(Size.m1202getHeightimpl(j)) & BodyPartID.bodyIdMax) | (Math.round(Size.m1204getWidthimpl(j)) << 32));
    }
}
