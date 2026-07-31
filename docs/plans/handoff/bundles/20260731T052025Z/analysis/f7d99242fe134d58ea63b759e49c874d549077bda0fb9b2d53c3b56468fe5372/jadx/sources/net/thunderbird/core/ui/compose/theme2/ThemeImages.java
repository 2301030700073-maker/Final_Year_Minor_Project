package net.thunderbird.core.ui.compose.theme2;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.compose.resources.DrawableResource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeImages {
    public final DrawableResource logo;

    public ThemeImages(DrawableResource drawableResource) {
        drawableResource.getClass();
        this.logo = drawableResource;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ThemeImages) && Intrinsics.areEqual(this.logo, ((ThemeImages) obj).logo);
    }

    public final int hashCode() {
        return this.logo.id.hashCode();
    }

    public final String toString() {
        return "ThemeImages(logo=" + this.logo + ")";
    }
}
