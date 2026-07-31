package androidx.compose.material3;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.shape.DpCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.tokens.ShapeTokens;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ShapeDefaults {
    public static final RoundedCornerShape ExtraSmall = ShapeTokens.CornerExtraSmall;
    public static final RoundedCornerShape Small = ShapeTokens.CornerSmall;
    public static final RoundedCornerShape Medium = ShapeTokens.CornerMedium;
    public static final RoundedCornerShape Large = ShapeTokens.CornerLarge;
    public static final RoundedCornerShape LargeIncreased = ShapeTokens.CornerLargeIncreased;
    public static final RoundedCornerShape ExtraLarge = ShapeTokens.CornerExtraLarge;
    public static final RoundedCornerShape ExtraLargeIncreased = ShapeTokens.CornerExtraLargeIncreased;
    public static final RoundedCornerShape ExtraExtraLarge = ShapeTokens.CornerExtraExtraLarge;
    public static final DpCornerSize CornerNone = ShapeTokens.CornerValueNone;

    static {
        if (100.0f < 0.0f || 100.0f > 100.0f) {
            InlineClassHelperKt.throwIllegalArgumentException("The percent should be in the range of [0, 100]");
        }
    }
}
