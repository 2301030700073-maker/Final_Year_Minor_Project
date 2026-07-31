package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CrossAxisAlignment$VerticalCrossAxisAlignment extends SpacerKt {
    @Override // androidx.compose.foundation.layout.SpacerKt
    public final int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection) {
        return Math.round((1.0f - 1.0f) * ((i - i2) / 2.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CrossAxisAlignment$VerticalCrossAxisAlignment)) {
            return false;
        }
        BiasAlignment.Vertical vertical = Alignment.Companion.Top;
        return vertical.equals(vertical);
    }

    public final int hashCode() {
        return Float.floatToIntBits(-1.0f);
    }

    public final String toString() {
        return "VerticalCrossAxisAlignment(vertical=" + Alignment.Companion.Top + ')';
    }
}
