package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CrossAxisAlignment$VerticalCrossAxisAlignment extends OffsetKt {
    public final BiasAlignment.Vertical vertical;

    public CrossAxisAlignment$VerticalCrossAxisAlignment(BiasAlignment.Vertical vertical) {
        this.vertical = vertical;
    }

    @Override // androidx.compose.foundation.layout.OffsetKt
    public final int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection, Placeable placeable, int i3) {
        return this.vertical.align(i2, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CrossAxisAlignment$VerticalCrossAxisAlignment) && Intrinsics.areEqual(this.vertical, ((CrossAxisAlignment$VerticalCrossAxisAlignment) obj).vertical);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.vertical.bias);
    }

    public final String toString() {
        return "VerticalCrossAxisAlignment(vertical=" + this.vertical + ')';
    }
}
