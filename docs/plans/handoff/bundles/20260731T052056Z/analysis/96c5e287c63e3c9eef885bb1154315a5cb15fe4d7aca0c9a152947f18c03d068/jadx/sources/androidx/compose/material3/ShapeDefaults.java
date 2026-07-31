package androidx.compose.material3;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.shape.DpCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.tokens.ShapeTokens;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        if (100.0f < RecyclerView.DECELERATION_RATE || 100.0f > 100.0f) {
            InlineClassHelperKt.throwIllegalArgumentException("The percent should be in the range of [0, 100]");
        }
    }
}
