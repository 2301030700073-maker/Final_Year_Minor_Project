package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CrossAxisAlignment$VerticalCrossAxisAlignment extends OffsetKt {
    public final BiasAlignment.Vertical vertical;

    public CrossAxisAlignment$VerticalCrossAxisAlignment(BiasAlignment.Vertical vertical) {
        this.vertical = vertical;
    }

    @Override // androidx.compose.foundation.layout.OffsetKt
    public final int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection) {
        return this.vertical.align(i2, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CrossAxisAlignment$VerticalCrossAxisAlignment) && Intrinsics.areEqual(this.vertical, ((CrossAxisAlignment$VerticalCrossAxisAlignment) obj).vertical);
    }

    public final int hashCode() {
        return this.vertical.hashCode();
    }

    public final String toString() {
        return "VerticalCrossAxisAlignment(vertical=" + this.vertical + ')';
    }
}
