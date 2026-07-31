package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RippleConfiguration {
    public final long color = Color.Unspecified;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RippleConfiguration) {
            return Color.m482equalsimpl0(this.color, ((RippleConfiguration) obj).color);
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.color) * 31;
    }

    public final String toString() {
        return "RippleConfiguration(color=" + ((Object) Color.m488toStringimpl(this.color)) + ", rippleAlpha=null)";
    }
}
