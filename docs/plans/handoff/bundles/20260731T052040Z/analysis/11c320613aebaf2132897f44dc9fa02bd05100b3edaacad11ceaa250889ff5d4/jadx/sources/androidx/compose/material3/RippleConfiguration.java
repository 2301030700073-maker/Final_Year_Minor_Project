package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RippleConfiguration {
    public final long color = Color.Unspecified;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RippleConfiguration) {
            return Color.m244equalsimpl0(this.color, ((RippleConfiguration) obj).color);
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m658hashCodeimpl(this.color) * 31;
    }

    public final String toString() {
        return "RippleConfiguration(color=" + ((Object) Color.m250toStringimpl(this.color)) + ", rippleAlpha=null)";
    }
}
