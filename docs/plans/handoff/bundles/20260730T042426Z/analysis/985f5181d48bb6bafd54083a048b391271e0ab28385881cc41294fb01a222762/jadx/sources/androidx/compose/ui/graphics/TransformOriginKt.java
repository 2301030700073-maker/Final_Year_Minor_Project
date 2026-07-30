package androidx.compose.ui.graphics;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: TransformOrigin.kt */
/* loaded from: classes.dex */
public abstract class TransformOriginKt {
    public static final long TransformOrigin(float f, float f2) {
        return TransformOrigin.m1434constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }
}
