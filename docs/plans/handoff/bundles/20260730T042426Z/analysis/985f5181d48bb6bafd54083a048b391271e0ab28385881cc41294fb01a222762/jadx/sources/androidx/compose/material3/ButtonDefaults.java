package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.tokens.FilledButtonTokens;
import androidx.compose.material3.tokens.OutlinedButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;

/* compiled from: Button.kt */
/* loaded from: classes.dex */
public final class ButtonDefaults {
    public static final int $stable = 0;
    private static final float ButtonHorizontalPadding;
    private static final float ButtonVerticalPadding;
    private static final PaddingValues ButtonWithIconContentPadding;
    private static final float ButtonWithIconHorizontalStartPadding;
    private static final PaddingValues ContentPadding;
    public static final ButtonDefaults INSTANCE = new ButtonDefaults();
    private static final float IconSize;
    private static final float IconSpacing;
    private static final float MinHeight;
    private static final float MinWidth;
    private static final PaddingValues TextButtonContentPadding;
    private static final float TextButtonHorizontalPadding;
    private static final PaddingValues TextButtonWithIconContentPadding;
    private static final float TextButtonWithIconHorizontalEndPadding;

    private ButtonDefaults() {
    }

    public final PaddingValues getContentPadding() {
        return ContentPadding;
    }

    /* renamed from: getMinWidth-D9Ej5fM, reason: not valid java name */
    public final float m619getMinWidthD9Ej5fM() {
        return MinWidth;
    }

    /* renamed from: getMinHeight-D9Ej5fM, reason: not valid java name */
    public final float m618getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m616getIconSizeD9Ej5fM() {
        return IconSize;
    }

    /* renamed from: getIconSpacing-D9Ej5fM, reason: not valid java name */
    public final float m617getIconSpacingD9Ej5fM() {
        return IconSpacing;
    }

    public final Shape getShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1234923021, i, -1, "androidx.compose.material3.ButtonDefaults.<get-shape> (Button.kt:542)");
        }
        Shape value = ShapesKt.getValue(FilledButtonTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getOutlinedShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2045213065, i, -1, "androidx.compose.material3.ButtonDefaults.<get-outlinedShape> (Button.kt:554)");
        }
        Shape value = ShapesKt.getValue(OutlinedButtonTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final ButtonColors buttonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1449248637, i, -1, "androidx.compose.material3.ButtonDefaults.buttonColors (Button.kt:564)");
        }
        ButtonColors defaultButtonColors$material3_release = getDefaultButtonColors$material3_release(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultButtonColors$material3_release;
    }

    public final ButtonColors getDefaultButtonColors$material3_release(ColorScheme colorScheme) {
        ButtonColors defaultButtonColorsCached$material3_release = colorScheme.getDefaultButtonColorsCached$material3_release();
        if (defaultButtonColorsCached$material3_release != null) {
            return defaultButtonColorsCached$material3_release;
        }
        FilledButtonTokens filledButtonTokens = FilledButtonTokens.INSTANCE;
        ButtonColors buttonColors = new ButtonColors(ColorSchemeKt.fromToken(colorScheme, filledButtonTokens.getContainerColor()), ColorSchemeKt.fromToken(colorScheme, filledButtonTokens.getLabelTextColor()), Color.m1302copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledButtonTokens.getDisabledContainerColor()), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), Color.m1302copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, filledButtonTokens.getDisabledLabelTextColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultButtonColorsCached$material3_release(buttonColors);
        return buttonColors;
    }

    public final ButtonColors outlinedButtonColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1344886725, i, -1, "androidx.compose.material3.ButtonDefaults.outlinedButtonColors (Button.kt:701)");
        }
        ButtonColors defaultOutlinedButtonColors$material3_release = getDefaultOutlinedButtonColors$material3_release(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultOutlinedButtonColors$material3_release;
    }

    /* renamed from: outlinedButtonColors-ro_MJ88, reason: not valid java name */
    public final ButtonColors m620outlinedButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        long m1317getUnspecified0d7_KjU = (i2 & 1) != 0 ? Color.Companion.m1317getUnspecified0d7_KjU() : j;
        long m1317getUnspecified0d7_KjU2 = (i2 & 2) != 0 ? Color.Companion.m1317getUnspecified0d7_KjU() : j2;
        long m1317getUnspecified0d7_KjU3 = (i2 & 4) != 0 ? Color.Companion.m1317getUnspecified0d7_KjU() : j3;
        long m1317getUnspecified0d7_KjU4 = (i2 & 8) != 0 ? Color.Companion.m1317getUnspecified0d7_KjU() : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1778526249, i, -1, "androidx.compose.material3.ButtonDefaults.outlinedButtonColors (Button.kt:719)");
        }
        ButtonColors m614copyjRlVdoo = getDefaultOutlinedButtonColors$material3_release(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m614copyjRlVdoo(m1317getUnspecified0d7_KjU, m1317getUnspecified0d7_KjU2, m1317getUnspecified0d7_KjU3, m1317getUnspecified0d7_KjU4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return m614copyjRlVdoo;
    }

    public final ButtonColors getDefaultOutlinedButtonColors$material3_release(ColorScheme colorScheme) {
        ButtonColors defaultOutlinedButtonColorsCached$material3_release = colorScheme.getDefaultOutlinedButtonColorsCached$material3_release();
        if (defaultOutlinedButtonColorsCached$material3_release != null) {
            return defaultOutlinedButtonColorsCached$material3_release;
        }
        Color.Companion companion = Color.Companion;
        long m1316getTransparent0d7_KjU = companion.m1316getTransparent0d7_KjU();
        OutlinedButtonTokens outlinedButtonTokens = OutlinedButtonTokens.INSTANCE;
        ButtonColors buttonColors = new ButtonColors(m1316getTransparent0d7_KjU, ColorSchemeKt.fromToken(colorScheme, outlinedButtonTokens.getLabelTextColor()), companion.m1316getTransparent0d7_KjU(), Color.m1302copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedButtonTokens.getDisabledLabelTextColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultOutlinedButtonColorsCached$material3_release(buttonColors);
        return buttonColors;
    }

    /* renamed from: buttonElevation-R_JCAzs, reason: not valid java name */
    public final ButtonElevation m615buttonElevationR_JCAzs(float f, float f2, float f3, float f4, float f5, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            f = FilledButtonTokens.INSTANCE.m888getContainerElevationD9Ej5fM();
        }
        if ((i2 & 2) != 0) {
            f2 = FilledButtonTokens.INSTANCE.m893getPressedContainerElevationD9Ej5fM();
        }
        float f6 = f2;
        if ((i2 & 4) != 0) {
            f3 = FilledButtonTokens.INSTANCE.m890getFocusContainerElevationD9Ej5fM();
        }
        float f7 = f3;
        if ((i2 & 8) != 0) {
            f4 = FilledButtonTokens.INSTANCE.m891getHoverContainerElevationD9Ej5fM();
        }
        float f8 = f4;
        if ((i2 & 16) != 0) {
            f5 = FilledButtonTokens.INSTANCE.m889getDisabledContainerElevationD9Ej5fM();
        }
        float f9 = f5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1827791191, i, -1, "androidx.compose.material3.ButtonDefaults.buttonElevation (Button.kt:802)");
        }
        ButtonElevation buttonElevation = new ButtonElevation(f, f6, f7, f8, f9, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return buttonElevation;
    }

    public final BorderStroke outlinedButtonBorder(boolean z, Composer composer, int i, int i2) {
        long m1302copywmQWz5c$default;
        if ((i2 & 1) != 0) {
            z = true;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-626854767, i, -1, "androidx.compose.material3.ButtonDefaults.outlinedButtonBorder (Button.kt:889)");
        }
        OutlinedButtonTokens outlinedButtonTokens = OutlinedButtonTokens.INSTANCE;
        float m905getOutlineWidthD9Ej5fM = outlinedButtonTokens.m905getOutlineWidthD9Ej5fM();
        if (z) {
            composer.startReplaceGroup(-855870548);
            m1302copywmQWz5c$default = ColorSchemeKt.getValue(outlinedButtonTokens.getOutlineColor(), composer, 6);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-855783004);
            m1302copywmQWz5c$default = Color.m1302copywmQWz5c$default(ColorSchemeKt.getValue(outlinedButtonTokens.getOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
            composer.endReplaceGroup();
        }
        BorderStroke m114BorderStrokecXLIe8U = BorderStrokeKt.m114BorderStrokecXLIe8U(m905getOutlineWidthD9Ej5fM, m1302copywmQWz5c$default);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return m114BorderStrokecXLIe8U;
    }

    static {
        float m2424constructorimpl = Dp.m2424constructorimpl(24);
        ButtonHorizontalPadding = m2424constructorimpl;
        float f = 8;
        float m2424constructorimpl2 = Dp.m2424constructorimpl(f);
        ButtonVerticalPadding = m2424constructorimpl2;
        PaddingValues m264PaddingValuesa9UjIt4 = PaddingKt.m264PaddingValuesa9UjIt4(m2424constructorimpl, m2424constructorimpl2, m2424constructorimpl, m2424constructorimpl2);
        ContentPadding = m264PaddingValuesa9UjIt4;
        float f2 = 16;
        float m2424constructorimpl3 = Dp.m2424constructorimpl(f2);
        ButtonWithIconHorizontalStartPadding = m2424constructorimpl3;
        ButtonWithIconContentPadding = PaddingKt.m264PaddingValuesa9UjIt4(m2424constructorimpl3, m2424constructorimpl2, m2424constructorimpl, m2424constructorimpl2);
        float m2424constructorimpl4 = Dp.m2424constructorimpl(12);
        TextButtonHorizontalPadding = m2424constructorimpl4;
        TextButtonContentPadding = PaddingKt.m264PaddingValuesa9UjIt4(m2424constructorimpl4, m264PaddingValuesa9UjIt4.mo259calculateTopPaddingD9Ej5fM(), m2424constructorimpl4, m264PaddingValuesa9UjIt4.mo256calculateBottomPaddingD9Ej5fM());
        float m2424constructorimpl5 = Dp.m2424constructorimpl(f2);
        TextButtonWithIconHorizontalEndPadding = m2424constructorimpl5;
        TextButtonWithIconContentPadding = PaddingKt.m264PaddingValuesa9UjIt4(m2424constructorimpl4, m264PaddingValuesa9UjIt4.mo259calculateTopPaddingD9Ej5fM(), m2424constructorimpl5, m264PaddingValuesa9UjIt4.mo256calculateBottomPaddingD9Ej5fM());
        MinWidth = Dp.m2424constructorimpl(58);
        MinHeight = Dp.m2424constructorimpl(40);
        IconSize = FilledButtonTokens.INSTANCE.m892getIconSizeD9Ej5fM();
        IconSpacing = Dp.m2424constructorimpl(f);
    }
}
