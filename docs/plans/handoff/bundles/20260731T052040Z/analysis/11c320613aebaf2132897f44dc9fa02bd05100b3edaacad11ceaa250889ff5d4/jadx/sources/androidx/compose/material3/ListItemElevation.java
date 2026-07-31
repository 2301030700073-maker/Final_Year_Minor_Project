package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ListItemElevation {
    public final float draggedElevation;

    public ListItemElevation(float f) {
        this.draggedElevation = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListItemElevation)) {
            return false;
        }
        return Dp.m443equalsimpl0(0.0f, 0.0f) && Dp.m443equalsimpl0(this.draggedElevation, ((ListItemElevation) obj).draggedElevation);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.draggedElevation) + (Float.floatToIntBits(0.0f) * 31);
    }
}
