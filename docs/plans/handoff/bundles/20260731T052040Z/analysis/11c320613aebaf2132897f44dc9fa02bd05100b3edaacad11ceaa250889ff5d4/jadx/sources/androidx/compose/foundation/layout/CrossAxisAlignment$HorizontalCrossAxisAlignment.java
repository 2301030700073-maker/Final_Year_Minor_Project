package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CrossAxisAlignment$HorizontalCrossAxisAlignment extends SpacerKt {
    public final BiasAlignment.Horizontal horizontal;

    public CrossAxisAlignment$HorizontalCrossAxisAlignment(BiasAlignment.Horizontal horizontal) {
        this.horizontal = horizontal;
    }

    @Override // androidx.compose.foundation.layout.SpacerKt
    public final int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection) {
        return this.horizontal.align(i2, i, layoutDirection);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CrossAxisAlignment$HorizontalCrossAxisAlignment) && Intrinsics.areEqual(this.horizontal, ((CrossAxisAlignment$HorizontalCrossAxisAlignment) obj).horizontal);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.horizontal.bias);
    }

    public final String toString() {
        return "HorizontalCrossAxisAlignment(horizontal=" + this.horizontal + ')';
    }
}
