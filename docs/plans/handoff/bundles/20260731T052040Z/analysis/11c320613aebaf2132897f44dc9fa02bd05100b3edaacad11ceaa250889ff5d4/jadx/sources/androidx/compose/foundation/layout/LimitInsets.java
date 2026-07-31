package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LimitInsets implements WindowInsets {
    public final UnionInsets insets;
    public final int sides;

    public LimitInsets(UnionInsets unionInsets, int i) {
        this.insets = unionInsets;
        this.sides = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitInsets)) {
            return false;
        }
        LimitInsets limitInsets = (LimitInsets) obj;
        return this.insets.equals(limitInsets.insets) && this.sides == limitInsets.sides;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getBottom(Density density) {
        if ((this.sides & 32) != 0) {
            return this.insets.getBottom(density);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getLeft(Density density, LayoutDirection layoutDirection) {
        if (((layoutDirection == LayoutDirection.Ltr ? 8 : 2) & this.sides) != 0) {
            return this.insets.getLeft(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getRight(Density density, LayoutDirection layoutDirection) {
        if (((layoutDirection == LayoutDirection.Ltr ? 4 : 1) & this.sides) != 0) {
            return this.insets.getRight(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getTop(Density density) {
        if ((this.sides & 16) != 0) {
            return this.insets.getTop(density);
        }
        return 0;
    }

    public final int hashCode() {
        return (this.insets.hashCode() * 31) + this.sides;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.insets);
        sb.append(" only ");
        StringBuilder sb2 = new StringBuilder("WindowInsetsSides(");
        StringBuilder sb3 = new StringBuilder();
        int i = SpacerKt.Start;
        int i2 = this.sides;
        if ((i2 & i) == i) {
            SpacerKt.valueToString_impl$lambda$0$appendPlus(sb3, "Start");
        }
        int i3 = SpacerKt.Left;
        if ((i2 & i3) == i3) {
            SpacerKt.valueToString_impl$lambda$0$appendPlus(sb3, "Left");
        }
        if ((i2 & 16) == 16) {
            SpacerKt.valueToString_impl$lambda$0$appendPlus(sb3, "Top");
        }
        int i4 = SpacerKt.End;
        if ((i2 & i4) == i4) {
            SpacerKt.valueToString_impl$lambda$0$appendPlus(sb3, "End");
        }
        int i5 = SpacerKt.Right;
        if ((i2 & i5) == i5) {
            SpacerKt.valueToString_impl$lambda$0$appendPlus(sb3, "Right");
        }
        if ((i2 & 32) == 32) {
            SpacerKt.valueToString_impl$lambda$0$appendPlus(sb3, "Bottom");
        }
        sb2.append(sb3.toString());
        sb2.append(')');
        sb.append((Object) sb2.toString());
        sb.append(')');
        return sb.toString();
    }
}
