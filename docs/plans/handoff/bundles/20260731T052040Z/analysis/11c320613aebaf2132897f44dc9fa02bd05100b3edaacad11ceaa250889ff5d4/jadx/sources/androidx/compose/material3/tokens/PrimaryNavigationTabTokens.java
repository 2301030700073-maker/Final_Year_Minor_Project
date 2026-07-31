package androidx.compose.material3.tokens;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PrimaryNavigationTabTokens {
    public static final ColorSchemeKeyTokens ActiveIndicatorColor = ColorSchemeKeyTokens.Primary;
    public static final float ActiveIndicatorHeight = 3.0f;
    public static final float ContainerHeight;
    public static final TypographyKeyTokens LabelTextFont;

    static {
        RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
        ContainerHeight = 48.0f;
        LabelTextFont = TypographyKeyTokens.TitleSmall;
    }
}
