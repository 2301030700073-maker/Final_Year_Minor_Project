package androidx.compose.ui.unit;

import androidx.compose.ui.util.MathHelpersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Dp.kt */
/* loaded from: classes.dex */
public abstract class DpKt {
    /* renamed from: DpOffset-YgX7TsA, reason: not valid java name */
    public static final long m2434DpOffsetYgX7TsA(float f, float f2) {
        return DpOffset.m2438constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }

    /* renamed from: DpSize-YgX7TsA, reason: not valid java name */
    public static final long m2435DpSizeYgX7TsA(float f, float f2) {
        return DpSize.m2447constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }

    /* renamed from: lerp-Md-fbLM, reason: not valid java name */
    public static final float m2436lerpMdfbLM(float f, float f2, float f3) {
        return Dp.m2424constructorimpl(MathHelpersKt.lerp(f, f2, f3));
    }
}
