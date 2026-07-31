package net.thunderbird.core.ui.compose.theme2;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeColorSchemeVariants {
    public final ThemeColorScheme dark;
    public final ThemeColorScheme light;

    public ThemeColorSchemeVariants(ThemeColorScheme themeColorScheme, ThemeColorScheme themeColorScheme2) {
        themeColorScheme.getClass();
        themeColorScheme2.getClass();
        this.dark = themeColorScheme;
        this.light = themeColorScheme2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeColorSchemeVariants)) {
            return false;
        }
        ThemeColorSchemeVariants themeColorSchemeVariants = (ThemeColorSchemeVariants) obj;
        return Intrinsics.areEqual(this.dark, themeColorSchemeVariants.dark) && Intrinsics.areEqual(this.light, themeColorSchemeVariants.light);
    }

    public final int hashCode() {
        return this.light.hashCode() + (this.dark.hashCode() * 31);
    }

    public final String toString() {
        return "ThemeColorSchemeVariants(dark=" + this.dark + ", light=" + this.light + ")";
    }
}
