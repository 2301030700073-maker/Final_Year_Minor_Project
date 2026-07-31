package net.thunderbird.core.ui.compose.theme2;

import androidx.compose.foundation.shape.RoundedCornerShape;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeShapes {
    public final RoundedCornerShape extraLarge;
    public final RoundedCornerShape extraSmall;
    public final RoundedCornerShape large;
    public final RoundedCornerShape medium;
    public final RoundedCornerShape small;

    public ThemeShapes(RoundedCornerShape roundedCornerShape, RoundedCornerShape roundedCornerShape2, RoundedCornerShape roundedCornerShape3, RoundedCornerShape roundedCornerShape4, RoundedCornerShape roundedCornerShape5) {
        this.extraSmall = roundedCornerShape;
        this.small = roundedCornerShape2;
        this.medium = roundedCornerShape3;
        this.large = roundedCornerShape4;
        this.extraLarge = roundedCornerShape5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeShapes)) {
            return false;
        }
        ThemeShapes themeShapes = (ThemeShapes) obj;
        return this.extraSmall.equals(themeShapes.extraSmall) && this.small.equals(themeShapes.small) && this.medium.equals(themeShapes.medium) && this.large.equals(themeShapes.large) && this.extraLarge.equals(themeShapes.extraLarge);
    }

    public final int hashCode() {
        return this.extraLarge.hashCode() + ((this.large.hashCode() + ((this.medium.hashCode() + ((this.small.hashCode() + (this.extraSmall.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ThemeShapes(extraSmall=" + this.extraSmall + ", small=" + this.small + ", medium=" + this.medium + ", large=" + this.large + ", extraLarge=" + this.extraLarge + ")";
    }
}
