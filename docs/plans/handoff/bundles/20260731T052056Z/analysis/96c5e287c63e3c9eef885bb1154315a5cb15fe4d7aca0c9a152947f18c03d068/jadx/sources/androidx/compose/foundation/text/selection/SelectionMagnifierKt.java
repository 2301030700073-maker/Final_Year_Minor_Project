package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SelectionMagnifierKt {
    public static final SpringSpec MagnifierSpringSpec;
    public static final long OffsetDisplacementThreshold;
    public static final AnimationVector2D UnspecifiedAnimationVector2D = new AnimationVector2D(Float.NaN, Float.NaN);
    public static final TwoWayConverterImpl UnspecifiedSafeOffsetVectorConverter = new TwoWayConverterImpl(new ChipKt$$ExternalSyntheticLambda2(12), new ChipKt$$ExternalSyntheticLambda2(13));

    static {
        long floatToRawIntBits = (Float.floatToRawIntBits(0.01f) << 32) | (Float.floatToRawIntBits(0.01f) & 4294967295L);
        OffsetDisplacementThreshold = floatToRawIntBits;
        MagnifierSpringSpec = new SpringSpec(new Offset(floatToRawIntBits));
    }
}
