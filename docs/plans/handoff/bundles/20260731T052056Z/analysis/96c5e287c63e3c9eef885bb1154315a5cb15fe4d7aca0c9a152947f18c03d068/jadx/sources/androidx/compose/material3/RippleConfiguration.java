package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RippleConfiguration {
    public final long color;

    public RippleConfiguration(long j, int i) {
        this.color = (i & 1) != 0 ? Color.Unspecified : j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleConfiguration)) {
            return false;
        }
        long j = ((RippleConfiguration) obj).color;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.color, j);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.color) * 31;
    }

    public final String toString() {
        return "RippleConfiguration(color=" + ((Object) Color.m434toStringimpl(this.color)) + ", rippleAlpha=null)";
    }
}
