package net.thunderbird.core.ui.compose.theme2;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.compose.theme2.p001default.DefaultThemeSizesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeConfig {
    public final ThemeColorSchemeVariants colors;
    public final ThemeImageVariants images;
    public final ThemeShapes shapes;
    public final ThemeTypography typography;

    public ThemeConfig(ThemeColorSchemeVariants themeColorSchemeVariants, ThemeImageVariants themeImageVariants, ThemeShapes themeShapes, ThemeTypography themeTypography) {
        themeShapes.getClass();
        themeTypography.getClass();
        this.colors = themeColorSchemeVariants;
        this.images = themeImageVariants;
        this.shapes = themeShapes;
        this.typography = themeTypography;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeConfig)) {
            return false;
        }
        ThemeConfig themeConfig = (ThemeConfig) obj;
        if (!this.colors.equals(themeConfig.colors)) {
            return false;
        }
        ThemeElevations themeElevations = DefaultThemeSizesKt.defaultThemeElevations;
        if (!themeElevations.equals(themeElevations) || !this.images.equals(themeConfig.images) || !Intrinsics.areEqual(this.shapes, themeConfig.shapes)) {
            return false;
        }
        ThemeSizes themeSizes = DefaultThemeSizesKt.defaultThemeSizes;
        if (!themeSizes.equals(themeSizes)) {
            return false;
        }
        ThemeSpacings themeSpacings = DefaultThemeSizesKt.defaultThemeSpacings;
        return themeSpacings.equals(themeSpacings) && Intrinsics.areEqual(this.typography, themeConfig.typography);
    }

    public final int hashCode() {
        return this.typography.hashCode() + ((DefaultThemeSizesKt.defaultThemeSpacings.hashCode() + ((DefaultThemeSizesKt.defaultThemeSizes.hashCode() + ((this.shapes.hashCode() + ((this.images.hashCode() + ((Float.floatToIntBits(12.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.0f) * 31, 1.0f, 31), 3.0f, 31), 6.0f, 31), 8.0f, 31) + (this.colors.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ThemeConfig(colors=" + this.colors + ", elevations=" + DefaultThemeSizesKt.defaultThemeElevations + ", images=" + this.images + ", shapes=" + this.shapes + ", sizes=" + DefaultThemeSizesKt.defaultThemeSizes + ", spacings=" + DefaultThemeSizesKt.defaultThemeSpacings + ", typography=" + this.typography + ")";
    }
}
