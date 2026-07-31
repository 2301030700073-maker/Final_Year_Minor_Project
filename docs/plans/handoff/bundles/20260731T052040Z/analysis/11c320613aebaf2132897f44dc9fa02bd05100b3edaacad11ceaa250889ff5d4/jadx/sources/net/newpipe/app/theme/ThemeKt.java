package net.newpipe.app.theme;

import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ThemeKt {
    public static final ColorScheme blackScheme;
    public static final ColorScheme darkScheme;
    public static final ColorScheme lightScheme;

    static {
        long j = ColorKt.primaryLight;
        long j2 = ColorKt.onPrimaryLight;
        long j3 = ColorKt.primaryContainerLight;
        long j4 = ColorKt.onPrimaryContainerLight;
        long j5 = ColorKt.secondaryLight;
        long j6 = ColorKt.onSecondaryLight;
        long j7 = ColorKt.secondaryContainerLight;
        long j8 = ColorKt.onSecondaryContainerLight;
        long j9 = ColorKt.tertiaryLight;
        long j10 = ColorKt.onTertiaryLight;
        long j11 = ColorKt.tertiaryContainerLight;
        long j12 = ColorKt.onTertiaryContainerLight;
        long j13 = ColorKt.errorLight;
        long j14 = ColorKt.onErrorLight;
        long j15 = ColorKt.errorContainerLight;
        long j16 = ColorKt.onErrorContainerLight;
        long j17 = ColorKt.backgroundLight;
        long j18 = ColorKt.onBackgroundLight;
        long j19 = ColorKt.surfaceLight;
        long j20 = ColorKt.onSurfaceLight;
        long j21 = ColorKt.surfaceVariantLight;
        long j22 = ColorKt.onSurfaceVariantLight;
        long j23 = ColorKt.outlineLight;
        long j24 = ColorKt.outlineVariantLight;
        long j25 = ColorKt.scrimLight;
        long j26 = ColorKt.inverseSurfaceLight;
        long j27 = ColorKt.inverseOnSurfaceLight;
        long j28 = ColorKt.inversePrimaryLight;
        long j29 = ColorKt.surfaceDimLight;
        long j30 = ColorKt.surfaceBrightLight;
        long j31 = ColorKt.surfaceContainerLowestLight;
        lightScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(j, j2, j3, j4, j28, j5, j6, j7, j8, j9, j10, j11, j12, j17, j18, j19, j20, j21, j22, j26, j27, j13, j14, j15, j16, j23, j24, j25, j30, ColorKt.surfaceContainerLight, ColorKt.surfaceContainerHighLight, ColorKt.surfaceContainerHighestLight, ColorKt.surfaceContainerLowLight, j31, j29, 524288, 65520);
        long j32 = ColorKt.primaryDark;
        long j33 = ColorKt.onPrimaryDark;
        long j34 = ColorKt.primaryContainerDark;
        long j35 = ColorKt.onPrimaryContainerDark;
        long j36 = ColorKt.secondaryDark;
        long j37 = ColorKt.onSecondaryDark;
        long j38 = ColorKt.secondaryContainerDark;
        long j39 = ColorKt.onSecondaryContainerDark;
        long j40 = ColorKt.tertiaryDark;
        long j41 = ColorKt.onTertiaryDark;
        long j42 = ColorKt.tertiaryContainerDark;
        long j43 = ColorKt.onTertiaryContainerDark;
        long j44 = ColorKt.errorDark;
        long j45 = ColorKt.onErrorDark;
        long j46 = ColorKt.errorContainerDark;
        long j47 = ColorKt.onErrorContainerDark;
        long j48 = ColorKt.backgroundDark;
        long j49 = ColorKt.onBackgroundDark;
        long j50 = ColorKt.surfaceDark;
        long j51 = ColorKt.onSurfaceDark;
        long j52 = ColorKt.surfaceVariantDark;
        long j53 = ColorKt.onSurfaceVariantDark;
        long j54 = ColorKt.outlineDark;
        long j55 = ColorKt.outlineVariantDark;
        long j56 = ColorKt.scrimDark;
        long j57 = ColorKt.inverseSurfaceDark;
        long j58 = ColorKt.inverseOnSurfaceDark;
        long j59 = ColorKt.inversePrimaryDark;
        long j60 = ColorKt.surfaceDimDark;
        long j61 = ColorKt.surfaceBrightDark;
        long j62 = ColorKt.surfaceContainerLowestDark;
        ColorScheme m139darkColorScheme_VG5OTI$default = ColorSchemeKt.m139darkColorScheme_VG5OTI$default(j32, j33, j34, j35, j59, j36, j37, j38, j39, j40, j41, j42, j43, j48, j49, j50, j51, j52, j53, j57, j58, j44, j45, j46, j47, j54, j55, j56, j61, ColorKt.surfaceContainerDark, ColorKt.surfaceContainerHighDark, ColorKt.surfaceContainerHighestDark, ColorKt.surfaceContainerLowDark, j62, j60, 524288, 65520);
        darkScheme = m139darkColorScheme_VG5OTI$default;
        blackScheme = new ColorScheme(m139darkColorScheme_VG5OTI$default.primary, m139darkColorScheme_VG5OTI$default.onPrimary, m139darkColorScheme_VG5OTI$default.primaryContainer, m139darkColorScheme_VG5OTI$default.onPrimaryContainer, m139darkColorScheme_VG5OTI$default.inversePrimary, m139darkColorScheme_VG5OTI$default.secondary, m139darkColorScheme_VG5OTI$default.onSecondary, m139darkColorScheme_VG5OTI$default.secondaryContainer, m139darkColorScheme_VG5OTI$default.onSecondaryContainer, m139darkColorScheme_VG5OTI$default.tertiary, m139darkColorScheme_VG5OTI$default.onTertiary, m139darkColorScheme_VG5OTI$default.tertiaryContainer, m139darkColorScheme_VG5OTI$default.onTertiaryContainer, m139darkColorScheme_VG5OTI$default.background, m139darkColorScheme_VG5OTI$default.onBackground, Color.Black, m139darkColorScheme_VG5OTI$default.onSurface, m139darkColorScheme_VG5OTI$default.surfaceVariant, m139darkColorScheme_VG5OTI$default.onSurfaceVariant, m139darkColorScheme_VG5OTI$default.surfaceTint, m139darkColorScheme_VG5OTI$default.inverseSurface, m139darkColorScheme_VG5OTI$default.inverseOnSurface, m139darkColorScheme_VG5OTI$default.error, m139darkColorScheme_VG5OTI$default.onError, m139darkColorScheme_VG5OTI$default.errorContainer, m139darkColorScheme_VG5OTI$default.onErrorContainer, m139darkColorScheme_VG5OTI$default.outline, m139darkColorScheme_VG5OTI$default.outlineVariant, m139darkColorScheme_VG5OTI$default.scrim, m139darkColorScheme_VG5OTI$default.surfaceBright, m139darkColorScheme_VG5OTI$default.surfaceDim, m139darkColorScheme_VG5OTI$default.surfaceContainer, m139darkColorScheme_VG5OTI$default.surfaceContainerHigh, m139darkColorScheme_VG5OTI$default.surfaceContainerHighest, m139darkColorScheme_VG5OTI$default.surfaceContainerLow, m139darkColorScheme_VG5OTI$default.surfaceContainerLowest, m139darkColorScheme_VG5OTI$default.primaryFixed, m139darkColorScheme_VG5OTI$default.primaryFixedDim, m139darkColorScheme_VG5OTI$default.onPrimaryFixed, m139darkColorScheme_VG5OTI$default.onPrimaryFixedVariant, m139darkColorScheme_VG5OTI$default.secondaryFixed, m139darkColorScheme_VG5OTI$default.secondaryFixedDim, m139darkColorScheme_VG5OTI$default.onSecondaryFixed, m139darkColorScheme_VG5OTI$default.onSecondaryFixedVariant, m139darkColorScheme_VG5OTI$default.tertiaryFixed, m139darkColorScheme_VG5OTI$default.tertiaryFixedDim, m139darkColorScheme_VG5OTI$default.onTertiaryFixed, m139darkColorScheme_VG5OTI$default.onTertiaryFixedVariant);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c8, code lost:
    
        if (r9.equals("light_theme") == false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AppTheme(final boolean r10, final androidx.compose.material3.ColorScheme r11, final androidx.compose.runtime.internal.ComposableLambdaImpl r12, androidx.compose.runtime.Composer r13, final int r14) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.newpipe.app.theme.ThemeKt.AppTheme(boolean, androidx.compose.material3.ColorScheme, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int):void");
    }
}
