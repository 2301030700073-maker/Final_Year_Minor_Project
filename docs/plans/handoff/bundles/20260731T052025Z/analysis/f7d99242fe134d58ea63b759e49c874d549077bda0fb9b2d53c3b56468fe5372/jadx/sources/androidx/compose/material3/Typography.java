package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Typography {
    public final TextStyle bodyLarge;
    public final TextStyle bodyLargeEmphasized;
    public final TextStyle bodyMedium;
    public final TextStyle bodyMediumEmphasized;
    public final TextStyle bodySmall;
    public final TextStyle bodySmallEmphasized;
    public final TextStyle displayLarge;
    public final TextStyle displayLargeEmphasized;
    public final TextStyle displayMedium;
    public final TextStyle displayMediumEmphasized;
    public final TextStyle displaySmall;
    public final TextStyle displaySmallEmphasized;
    public final TextStyle headlineLarge;
    public final TextStyle headlineLargeEmphasized;
    public final TextStyle headlineMedium;
    public final TextStyle headlineMediumEmphasized;
    public final TextStyle headlineSmall;
    public final TextStyle headlineSmallEmphasized;
    public final TextStyle labelLarge;
    public final TextStyle labelLargeEmphasized;
    public final TextStyle labelMedium;
    public final TextStyle labelMediumEmphasized;
    public final TextStyle labelSmall;
    public final TextStyle labelSmallEmphasized;
    public final TextStyle titleLarge;
    public final TextStyle titleLargeEmphasized;
    public final TextStyle titleMedium;
    public final TextStyle titleMediumEmphasized;
    public final TextStyle titleSmall;
    public final TextStyle titleSmallEmphasized;

    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15) {
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
        this.displayLargeEmphasized = textStyle;
        this.displayMediumEmphasized = textStyle2;
        this.displaySmallEmphasized = textStyle3;
        this.headlineLargeEmphasized = textStyle4;
        this.headlineMediumEmphasized = textStyle5;
        this.headlineSmallEmphasized = textStyle6;
        this.titleLargeEmphasized = textStyle7;
        this.titleMediumEmphasized = textStyle8;
        this.titleSmallEmphasized = textStyle9;
        this.bodyLargeEmphasized = textStyle10;
        this.bodyMediumEmphasized = textStyle11;
        this.bodySmallEmphasized = textStyle12;
        this.labelLargeEmphasized = textStyle13;
        this.labelMediumEmphasized = textStyle14;
        this.labelSmallEmphasized = textStyle15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) obj;
        return Intrinsics.areEqual(this.displayLarge, typography.displayLarge) && Intrinsics.areEqual(this.displayMedium, typography.displayMedium) && Intrinsics.areEqual(this.displaySmall, typography.displaySmall) && Intrinsics.areEqual(this.headlineLarge, typography.headlineLarge) && Intrinsics.areEqual(this.headlineMedium, typography.headlineMedium) && Intrinsics.areEqual(this.headlineSmall, typography.headlineSmall) && Intrinsics.areEqual(this.titleLarge, typography.titleLarge) && Intrinsics.areEqual(this.titleMedium, typography.titleMedium) && Intrinsics.areEqual(this.titleSmall, typography.titleSmall) && Intrinsics.areEqual(this.bodyLarge, typography.bodyLarge) && Intrinsics.areEqual(this.bodyMedium, typography.bodyMedium) && Intrinsics.areEqual(this.bodySmall, typography.bodySmall) && Intrinsics.areEqual(this.labelLarge, typography.labelLarge) && Intrinsics.areEqual(this.labelMedium, typography.labelMedium) && Intrinsics.areEqual(this.labelSmall, typography.labelSmall) && Intrinsics.areEqual(this.displayLargeEmphasized, typography.displayLargeEmphasized) && Intrinsics.areEqual(this.displayMediumEmphasized, typography.displayMediumEmphasized) && Intrinsics.areEqual(this.displaySmallEmphasized, typography.displaySmallEmphasized) && Intrinsics.areEqual(this.headlineLargeEmphasized, typography.headlineLargeEmphasized) && Intrinsics.areEqual(this.headlineMediumEmphasized, typography.headlineMediumEmphasized) && Intrinsics.areEqual(this.headlineSmallEmphasized, typography.headlineSmallEmphasized) && Intrinsics.areEqual(this.titleLargeEmphasized, typography.titleLargeEmphasized) && Intrinsics.areEqual(this.titleMediumEmphasized, typography.titleMediumEmphasized) && Intrinsics.areEqual(this.titleSmallEmphasized, typography.titleSmallEmphasized) && Intrinsics.areEqual(this.bodyLargeEmphasized, typography.bodyLargeEmphasized) && Intrinsics.areEqual(this.bodyMediumEmphasized, typography.bodyMediumEmphasized) && Intrinsics.areEqual(this.bodySmallEmphasized, typography.bodySmallEmphasized) && Intrinsics.areEqual(this.labelLargeEmphasized, typography.labelLargeEmphasized) && Intrinsics.areEqual(this.labelMediumEmphasized, typography.labelMediumEmphasized) && Intrinsics.areEqual(this.labelSmallEmphasized, typography.labelSmallEmphasized);
    }

    public final int hashCode() {
        return this.labelSmallEmphasized.hashCode() + Modifier.CC.m(this.labelMediumEmphasized, Modifier.CC.m(this.labelLargeEmphasized, Modifier.CC.m(this.bodySmallEmphasized, Modifier.CC.m(this.bodyMediumEmphasized, Modifier.CC.m(this.bodyLargeEmphasized, Modifier.CC.m(this.titleSmallEmphasized, Modifier.CC.m(this.titleMediumEmphasized, Modifier.CC.m(this.titleLargeEmphasized, Modifier.CC.m(this.headlineSmallEmphasized, Modifier.CC.m(this.headlineMediumEmphasized, Modifier.CC.m(this.headlineLargeEmphasized, Modifier.CC.m(this.displaySmallEmphasized, Modifier.CC.m(this.displayMediumEmphasized, Modifier.CC.m(this.displayLargeEmphasized, Modifier.CC.m(this.labelSmall, Modifier.CC.m(this.labelMedium, Modifier.CC.m(this.labelLarge, Modifier.CC.m(this.bodySmall, Modifier.CC.m(this.bodyMedium, Modifier.CC.m(this.bodyLarge, Modifier.CC.m(this.titleSmall, Modifier.CC.m(this.titleMedium, Modifier.CC.m(this.titleLarge, Modifier.CC.m(this.headlineSmall, Modifier.CC.m(this.headlineMedium, Modifier.CC.m(this.headlineLarge, Modifier.CC.m(this.displaySmall, Modifier.CC.m(this.displayMedium, this.displayLarge.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "Typography(displayLarge=" + this.displayLarge + ", displayMedium=" + this.displayMedium + ",displaySmall=" + this.displaySmall + ", headlineLarge=" + this.headlineLarge + ", headlineMedium=" + this.headlineMedium + ", headlineSmall=" + this.headlineSmall + ", titleLarge=" + this.titleLarge + ", titleMedium=" + this.titleMedium + ", titleSmall=" + this.titleSmall + ", bodyLarge=" + this.bodyLarge + ", bodyMedium=" + this.bodyMedium + ", bodySmall=" + this.bodySmall + ", labelLarge=" + this.labelLarge + ", labelMedium=" + this.labelMedium + ", labelSmall=" + this.labelSmall + ", displayLargeEmphasized=" + this.displayLargeEmphasized + ", displayMediumEmphasized=" + this.displayMediumEmphasized + ", displaySmallEmphasized=" + this.displaySmallEmphasized + ", headlineLargeEmphasized=" + this.headlineLargeEmphasized + ", headlineMediumEmphasized=" + this.headlineMediumEmphasized + ", headlineSmallEmphasized=" + this.headlineSmallEmphasized + ", titleLargeEmphasized=" + this.titleLargeEmphasized + ", titleMediumEmphasized=" + this.titleMediumEmphasized + ", titleSmallEmphasized=" + this.titleSmallEmphasized + ", bodyLargeEmphasized=" + this.bodyLargeEmphasized + ", bodyMediumEmphasized=" + this.bodyMediumEmphasized + ", bodySmallEmphasized=" + this.bodySmallEmphasized + ", labelLargeEmphasized=" + this.labelLargeEmphasized + ", labelMediumEmphasized=" + this.labelMediumEmphasized + ", labelSmallEmphasized=" + this.labelSmallEmphasized + ')';
    }
}
