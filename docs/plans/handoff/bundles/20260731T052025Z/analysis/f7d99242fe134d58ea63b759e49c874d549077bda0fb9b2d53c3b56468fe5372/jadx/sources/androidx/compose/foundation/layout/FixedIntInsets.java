package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FixedIntInsets implements WindowInsets {
    public final int topVal;

    public FixedIntInsets(int i) {
        this.topVal = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FixedIntInsets) && this.topVal == ((FixedIntInsets) obj).topVal;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getBottom(Density density) {
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getLeft(Density density, LayoutDirection layoutDirection) {
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getRight(Density density, LayoutDirection layoutDirection) {
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getTop(Density density) {
        return this.topVal;
    }

    public final int hashCode() {
        return this.topVal * 961;
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("Insets(left=0, top="), this.topVal, ", right=0, bottom=0)");
    }
}
