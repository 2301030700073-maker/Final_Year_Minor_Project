package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: ScaleFactor.kt */
/* loaded from: classes.dex */
public abstract class ScaleFactorKt {
    public static final long ScaleFactor(float f, float f2) {
        return ScaleFactor.m1785constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }

    /* renamed from: times-UQTWf7w, reason: not valid java name */
    public static final long m1790timesUQTWf7w(long j, long j2) {
        return SizeKt.Size(Size.m1204getWidthimpl(j) * ScaleFactor.m1787getScaleXimpl(j2), Size.m1202getHeightimpl(j) * ScaleFactor.m1788getScaleYimpl(j2));
    }

    /* renamed from: times-m-w2e94, reason: not valid java name */
    public static final long m1791timesmw2e94(long j, long j2) {
        return m1790timesUQTWf7w(j2, j);
    }
}
