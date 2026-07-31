package androidx.glance;

import androidx.glance.unit.ColorProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ButtonColors {
    public final ColorProvider backgroundColor;
    public final ColorProvider contentColor;

    public ButtonColors(ColorProvider colorProvider, ColorProvider colorProvider2) {
        this.backgroundColor = colorProvider;
        this.contentColor = colorProvider2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!ButtonColors.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        ButtonColors buttonColors = (ButtonColors) obj;
        return Intrinsics.areEqual(this.backgroundColor, buttonColors.backgroundColor) && Intrinsics.areEqual(this.contentColor, buttonColors.contentColor);
    }

    public final int hashCode() {
        return this.contentColor.hashCode() + (this.backgroundColor.hashCode() * 31);
    }
}
