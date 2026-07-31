package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.material3.tokens.ButtonSmallTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.FilledButtonTokens;
import androidx.compose.material3.tokens.FilledTonalButtonTokens;
import androidx.compose.material3.tokens.OutlinedButtonTokens;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.material3.tokens.TextButtonTokens;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ButtonDefaults {
    public static final PaddingValuesImpl ButtonWithIconContentPadding;
    public static final PaddingValuesImpl ContentPadding;
    public static final float MinHeight;
    public static final float MinWidth;
    public static final PaddingValuesImpl TextButtonContentPadding;

    static {
        ShapeKeyTokens shapeKeyTokens = ButtonSmallTokens.ContainerShapeRound;
        float f = Room.LeadingSpace;
        float f2 = Room.TrailingSpace;
        ContentPadding = new PaddingValuesImpl(f, 8.0f, f2, 8.0f);
        ButtonWithIconContentPadding = new PaddingValuesImpl(16.0f, 8.0f, f2, 8.0f);
        TextButtonContentPadding = new PaddingValuesImpl(12.0f, 8.0f, 12.0f, 8.0f);
        if (!((8.0f >= RecyclerView.DECELERATION_RATE) & (8.0f >= RecyclerView.DECELERATION_RATE))) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
        MinWidth = 58.0f;
        MinHeight = 40.0f;
    }

    /* renamed from: buttonColors-ro_MJ88, reason: not valid java name */
    public static ButtonColors m260buttonColorsro_MJ88(long j, long j2, GapComposer gapComposer, int i) {
        ButtonColors buttonColors;
        long Color;
        long Color2;
        long j3 = (i & 2) != 0 ? Color.Unspecified : j2;
        long j4 = Color.Unspecified;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        ButtonColors buttonColors2 = colorScheme.defaultButtonColorsCached;
        if (buttonColors2 == null) {
            long fromToken = ColorSchemeKt.fromToken(colorScheme, FilledButtonTokens.ContainerColor);
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, FilledButtonTokens.LabelTextColor);
            Color = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledButtonTokens.DisabledContainerOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledButtonTokens.DisabledContainerColor)));
            Color2 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledButtonTokens.DisabledLabelTextOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledButtonTokens.DisabledLabelTextColor)));
            ButtonColors buttonColors3 = new ButtonColors(fromToken, fromToken2, Color, Color2);
            colorScheme.defaultButtonColorsCached = buttonColors3;
            buttonColors = buttonColors3;
        } else {
            buttonColors = buttonColors2;
        }
        return buttonColors.m259copyjRlVdoo(j, j3, j4, j4);
    }

    /* renamed from: filledTonalButtonColors-ro_MJ88, reason: not valid java name */
    public static ButtonColors m261filledTonalButtonColorsro_MJ88(long j, long j2, GapComposer gapComposer) {
        ButtonColors buttonColors;
        long Color;
        long Color2;
        long j3 = Color.Unspecified;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        ButtonColors buttonColors2 = colorScheme.defaultFilledTonalButtonColorsCached;
        if (buttonColors2 == null) {
            long fromToken = ColorSchemeKt.fromToken(colorScheme, FilledTonalButtonTokens.ContainerColor);
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, FilledTonalButtonTokens.LabelTextColor);
            Color = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), 0.12f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTonalButtonTokens.DisabledContainerColor)));
            Color2 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTonalButtonTokens.DisabledLabelTextColor)));
            ButtonColors buttonColors3 = new ButtonColors(fromToken, fromToken2, Color, Color2);
            colorScheme.defaultFilledTonalButtonColorsCached = buttonColors3;
            buttonColors = buttonColors3;
        } else {
            buttonColors = buttonColors2;
        }
        return buttonColors.m259copyjRlVdoo(j, j2, j3, j3);
    }

    public static ButtonColors getDefaultOutlinedButtonColors$material3(ColorScheme colorScheme) {
        long Color;
        ButtonColors buttonColors = colorScheme.defaultOutlinedButtonColorsCached;
        if (buttonColors != null) {
            return buttonColors;
        }
        long j = Color.Transparent;
        long fromToken = ColorSchemeKt.fromToken(colorScheme, OutlinedButtonTokens.LabelTextColor);
        Color = ColorKt.Color(Color.m433getRedimpl(r6), Color.m432getGreenimpl(r6), Color.m430getBlueimpl(r6), OutlinedButtonTokens.DisabledLabelTextOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, OutlinedButtonTokens.DisabledLabelTextColor)));
        ButtonColors buttonColors2 = new ButtonColors(j, fromToken, j, Color);
        colorScheme.defaultOutlinedButtonColorsCached = buttonColors2;
        return buttonColors2;
    }

    public static ButtonColors getDefaultTextButtonColors$material3(ColorScheme colorScheme) {
        long Color;
        ButtonColors buttonColors = colorScheme.defaultTextButtonColorsCached;
        if (buttonColors != null) {
            return buttonColors;
        }
        long j = Color.Transparent;
        long fromToken = ColorSchemeKt.fromToken(colorScheme, ColorSchemeKeyTokens.Primary);
        Color = ColorKt.Color(Color.m433getRedimpl(r6), Color.m432getGreenimpl(r6), Color.m430getBlueimpl(r6), TextButtonTokens.DisabledLabelOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, TextButtonTokens.DisabledLabelColor)));
        ButtonColors buttonColors2 = new ButtonColors(j, fromToken, j, Color);
        colorScheme.defaultTextButtonColorsCached = buttonColors2;
        return buttonColors2;
    }

    /* renamed from: outlinedButtonColors-ro_MJ88, reason: not valid java name */
    public static ButtonColors m262outlinedButtonColorsro_MJ88(long j, GapComposer gapComposer) {
        long j2 = Color.Unspecified;
        return getDefaultOutlinedButtonColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme)).m259copyjRlVdoo(j2, j, j2, j2);
    }

    /* renamed from: textButtonColors-ro_MJ88, reason: not valid java name */
    public static ButtonColors m263textButtonColorsro_MJ88(long j, GapComposer gapComposer) {
        long j2 = Color.Unspecified;
        return getDefaultTextButtonColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme)).m259copyjRlVdoo(j2, j, j2, j2);
    }
}
