package app.k9mail.core.ui.compose.designsystem.atom.button;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.ShapesKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ButtonDefaults {
    public static final PaddingValuesImpl ContentPadding = androidx.compose.material3.ButtonDefaults.ContentPadding;

    /* renamed from: outlinedButtonBorder-RIQooxk, reason: not valid java name */
    public static ButtonBorderStroke m842outlinedButtonBorderRIQooxk(boolean z, long j, Composer composer, int i, int i2) {
        long Color;
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            j = Color.Unspecified;
        }
        Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), 0.1f, Color.m485getColorSpaceimpl(j));
        BorderStroke outlinedButtonBorder = androidx.compose.material3.ButtonDefaults.outlinedButtonBorder(z, composer);
        if (!Color.m482equalsimpl0(j, Color.Unspecified)) {
            if (!z) {
                j = Color;
            }
            outlinedButtonBorder = new BorderStroke(outlinedButtonBorder.width, new SolidColor(j));
        }
        return new ButtonBorderStroke(outlinedButtonBorder.width, outlinedButtonBorder.brush);
    }

    /* renamed from: outlinedButtonColors-5tl4gsc, reason: not valid java name */
    public static ButtonColors m843outlinedButtonColors5tl4gsc(long j, Composer composer, int i) {
        androidx.compose.material3.ButtonColors buttonColors;
        long Color;
        long j2 = Color.Unspecified;
        long j3 = (i & 2) != 0 ? j2 : j;
        PaddingValuesImpl paddingValuesImpl = androidx.compose.material3.ButtonDefaults.ContentPadding;
        ColorScheme colorScheme = (ColorScheme) ((GapComposer) composer).consume(ColorSchemeKt.LocalColorScheme);
        androidx.compose.material3.ButtonColors buttonColors2 = colorScheme.defaultOutlinedButtonColorsCached;
        if (buttonColors2 == null) {
            long j4 = Color.Transparent;
            long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.LabelTextColor$1);
            Color = ColorKt.Color(Color.m487getRedimpl(r11), Color.m486getGreenimpl(r11), Color.m484getBlueimpl(r11), ListTokens.DisabledLabelTextOpacity$1, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledLabelTextColor$1)));
            androidx.compose.material3.ButtonColors buttonColors3 = new androidx.compose.material3.ButtonColors(j4, fromToken, j4, Color);
            colorScheme.defaultOutlinedButtonColorsCached = buttonColors3;
            buttonColors = buttonColors3;
        } else {
            buttonColors = buttonColors2;
        }
        androidx.compose.material3.ButtonColors m325copyjRlVdoo = buttonColors.m325copyjRlVdoo(j2, j3, j2, j2);
        return new ButtonColors(m325copyjRlVdoo.containerColor, m325copyjRlVdoo.contentColor, m325copyjRlVdoo.disabledContainerColor, m325copyjRlVdoo.disabledContentColor, j3, j2);
    }

    public static ButtonShape outlinedShape(boolean z, ButtonBorderStroke buttonBorderStroke, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        boolean z2 = z;
        PaddingValuesImpl paddingValuesImpl = androidx.compose.material3.ButtonDefaults.ContentPadding;
        Shape value = ShapesKt.getValue(ListTokens.ContainerShapeRound, composer);
        if ((i2 & 4) != 0) {
            buttonBorderStroke = m842outlinedButtonBorderRIQooxk(z2, 0L, composer, i & 7182, 6);
        }
        return new ButtonShape(value, buttonBorderStroke);
    }
}
