package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldLabelPosition$Attached {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldLabelPosition$Attached)) {
            return false;
        }
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        return horizontal.equals(horizontal) && horizontal.equals(horizontal);
    }

    public final int hashCode() {
        return Float.floatToIntBits(-1.0f) + Animation.CC.m(38347, -1.0f, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Attached(alwaysMinimize=false, minimizedAlignment=");
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        sb.append(horizontal);
        sb.append(", expandedAlignment=");
        sb.append(horizontal);
        sb.append(')');
        return sb.toString();
    }
}
