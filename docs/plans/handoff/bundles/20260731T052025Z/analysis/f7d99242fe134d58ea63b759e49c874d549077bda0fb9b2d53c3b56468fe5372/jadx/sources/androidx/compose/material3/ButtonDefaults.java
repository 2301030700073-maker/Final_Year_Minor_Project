package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ButtonDefaults {
    public static final PaddingValuesImpl ContentPadding;
    public static final float MinHeight;
    public static final float MinWidth;
    public static final PaddingValuesImpl TextButtonContentPadding;

    static {
        float f = ListTokens.LeadingSpace;
        float f2 = ListTokens.TrailingSpace;
        ContentPadding = new PaddingValuesImpl(f, 8.0f, f2, 8.0f);
        OffsetKt.m214PaddingValuesa9UjIt4(16.0f, 8.0f, f2, 8.0f);
        TextButtonContentPadding = new PaddingValuesImpl(12.0f, 8.0f, 12.0f, 8.0f);
        OffsetKt.m214PaddingValuesa9UjIt4(12.0f, 8.0f, 16.0f, 8.0f);
        MinWidth = 58.0f;
        MinHeight = 40.0f;
    }

    /* renamed from: buttonColors-ro_MJ88, reason: not valid java name */
    public static ButtonColors m326buttonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i) {
        ButtonColors buttonColors;
        long Color;
        long Color2;
        long j5 = (i & 4) != 0 ? Color.Unspecified : j3;
        long j6 = (i & 8) != 0 ? Color.Unspecified : j4;
        ColorScheme colorScheme = (ColorScheme) ((GapComposer) composer).consume(ColorSchemeKt.LocalColorScheme);
        ButtonColors buttonColors2 = colorScheme.defaultButtonColorsCached;
        if (buttonColors2 == null) {
            long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.ContainerColor$3);
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.LabelTextColor);
            Color = ColorKt.Color(Color.m487getRedimpl(r1), Color.m486getGreenimpl(r1), Color.m484getBlueimpl(r1), ListTokens.DisabledContainerOpacity$1, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledContainerColor$1)));
            Color2 = ColorKt.Color(Color.m487getRedimpl(r1), Color.m486getGreenimpl(r1), Color.m484getBlueimpl(r1), ListTokens.DisabledLabelTextOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledLabelTextColor)));
            ButtonColors buttonColors3 = new ButtonColors(fromToken, fromToken2, Color, Color2);
            colorScheme.defaultButtonColorsCached = buttonColors3;
            buttonColors = buttonColors3;
        } else {
            buttonColors = buttonColors2;
        }
        return buttonColors.m325copyjRlVdoo(j, j2, j5, j6);
    }

    public static BorderStroke outlinedButtonBorder(boolean z, Composer composer) {
        long Color;
        ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.OutlineColor;
        float f = ListTokens.OutlinedOutlineWidth;
        if (z) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(-112346942);
            Color = ColorSchemeKt.getValue(colorSchemeKeyTokens, gapComposer);
            gapComposer.end(false);
        } else {
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startReplaceGroup(-112259336);
            Color = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), 0.1f, Color.m485getColorSpaceimpl(ColorSchemeKt.getValue(colorSchemeKeyTokens, gapComposer2)));
            gapComposer2.end(false);
        }
        return ImageKt.m131BorderStrokecXLIe8U(f, Color);
    }

    /* renamed from: textButtonColors-ro_MJ88, reason: not valid java name */
    public static ButtonColors m327textButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i) {
        ButtonColors buttonColors;
        long Color;
        long j5 = (i & 1) != 0 ? Color.Unspecified : j;
        long j6 = (i & 4) != 0 ? Color.Unspecified : j3;
        long j7 = (i & 8) != 0 ? Color.Unspecified : j4;
        ColorScheme colorScheme = (ColorScheme) ((GapComposer) composer).consume(ColorSchemeKt.LocalColorScheme);
        ButtonColors buttonColors2 = colorScheme.defaultTextButtonColorsCached;
        if (buttonColors2 == null) {
            long j8 = Color.Transparent;
            long fromToken = ColorSchemeKt.fromToken(colorScheme, ColorSchemeKeyTokens.Primary);
            Color = ColorKt.Color(Color.m487getRedimpl(r1), Color.m486getGreenimpl(r1), Color.m484getBlueimpl(r1), ListTokens.DisabledLabelOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledLabelColor$1)));
            ButtonColors buttonColors3 = new ButtonColors(j8, fromToken, j8, Color);
            colorScheme.defaultTextButtonColorsCached = buttonColors3;
            buttonColors = buttonColors3;
        } else {
            buttonColors = buttonColors2;
        }
        return buttonColors.m325copyjRlVdoo(j5, j2, j6, j7);
    }
}
