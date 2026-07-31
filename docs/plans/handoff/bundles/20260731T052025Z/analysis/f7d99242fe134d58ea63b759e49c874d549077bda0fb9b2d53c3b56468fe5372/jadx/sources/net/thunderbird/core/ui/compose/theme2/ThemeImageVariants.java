package net.thunderbird.core.ui.compose.theme2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeImageVariants {
    public final ThemeImages dark;
    public final ThemeImages light;

    public ThemeImageVariants(ThemeImages themeImages, ThemeImages themeImages2) {
        this.dark = themeImages;
        this.light = themeImages2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeImageVariants)) {
            return false;
        }
        ThemeImageVariants themeImageVariants = (ThemeImageVariants) obj;
        return this.dark.equals(themeImageVariants.dark) && this.light.equals(themeImageVariants.light);
    }

    public final int hashCode() {
        return this.light.hashCode() + (this.dark.hashCode() * 31);
    }

    public final String toString() {
        return "ThemeImageVariants(dark=" + this.dark + ", light=" + this.light + ")";
    }
}
