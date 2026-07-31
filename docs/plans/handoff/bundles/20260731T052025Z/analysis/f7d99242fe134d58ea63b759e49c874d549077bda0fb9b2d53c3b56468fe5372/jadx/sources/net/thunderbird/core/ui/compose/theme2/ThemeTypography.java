package net.thunderbird.core.ui.compose.theme2;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeTypography {
    public final TextStyle bodyLarge;
    public final TextStyle bodyMedium;
    public final TextStyle bodySmall;
    public final TextStyle displayLarge;
    public final TextStyle displayMedium;
    public final TextStyle displaySmall;
    public final TextStyle headlineLarge;
    public final TextStyle headlineMedium;
    public final TextStyle headlineSmall;
    public final TextStyle labelLarge;
    public final TextStyle labelMedium;
    public final TextStyle labelSmall;
    public final TextStyle titleLarge;
    public final TextStyle titleMedium;
    public final TextStyle titleSmall;

    public ThemeTypography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15) {
        this.displayLarge = textStyle;
        this.displayMedium = textStyle2;
        this.displaySmall = textStyle3;
        this.headlineLarge = textStyle4;
        this.headlineMedium = textStyle5;
        this.headlineSmall = textStyle6;
        this.titleLarge = textStyle7;
        this.titleMedium = textStyle8;
        this.titleSmall = textStyle9;
        this.bodyLarge = textStyle10;
        this.bodyMedium = textStyle11;
        this.bodySmall = textStyle12;
        this.labelLarge = textStyle13;
        this.labelMedium = textStyle14;
        this.labelSmall = textStyle15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeTypography)) {
            return false;
        }
        ThemeTypography themeTypography = (ThemeTypography) obj;
        return this.displayLarge.equals(themeTypography.displayLarge) && this.displayMedium.equals(themeTypography.displayMedium) && this.displaySmall.equals(themeTypography.displaySmall) && this.headlineLarge.equals(themeTypography.headlineLarge) && this.headlineMedium.equals(themeTypography.headlineMedium) && this.headlineSmall.equals(themeTypography.headlineSmall) && this.titleLarge.equals(themeTypography.titleLarge) && this.titleMedium.equals(themeTypography.titleMedium) && this.titleSmall.equals(themeTypography.titleSmall) && this.bodyLarge.equals(themeTypography.bodyLarge) && this.bodyMedium.equals(themeTypography.bodyMedium) && this.bodySmall.equals(themeTypography.bodySmall) && this.labelLarge.equals(themeTypography.labelLarge) && this.labelMedium.equals(themeTypography.labelMedium) && this.labelSmall.equals(themeTypography.labelSmall);
    }

    public final int hashCode() {
        return this.labelSmall.hashCode() + Modifier.CC.m(this.labelMedium, Modifier.CC.m(this.labelLarge, Modifier.CC.m(this.bodySmall, Modifier.CC.m(this.bodyMedium, Modifier.CC.m(this.bodyLarge, Modifier.CC.m(this.titleSmall, Modifier.CC.m(this.titleMedium, Modifier.CC.m(this.titleLarge, Modifier.CC.m(this.headlineSmall, Modifier.CC.m(this.headlineMedium, Modifier.CC.m(this.headlineLarge, Modifier.CC.m(this.displaySmall, Modifier.CC.m(this.displayMedium, this.displayLarge.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ThemeTypography(displayLarge=" + this.displayLarge + ", displayMedium=" + this.displayMedium + ", displaySmall=" + this.displaySmall + ", headlineLarge=" + this.headlineLarge + ", headlineMedium=" + this.headlineMedium + ", headlineSmall=" + this.headlineSmall + ", titleLarge=" + this.titleLarge + ", titleMedium=" + this.titleMedium + ", titleSmall=" + this.titleSmall + ", bodyLarge=" + this.bodyLarge + ", bodyMedium=" + this.bodyMedium + ", bodySmall=" + this.bodySmall + ", labelLarge=" + this.labelLarge + ", labelMedium=" + this.labelMedium + ", labelSmall=" + this.labelSmall + ")";
    }
}
