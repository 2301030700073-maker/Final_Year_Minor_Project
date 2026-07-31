package androidx.compose.material3.internal;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableWindowInsets implements WindowInsets {
    public final ParcelableSnapshotMutableState insets$delegate;

    public MutableWindowInsets(WindowInsets windowInsets) {
        this.insets$delegate = Updater.mutableStateOf$default(windowInsets);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getBottom(Density density) {
        return ((WindowInsets) this.insets$delegate.getValue()).getBottom(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getLeft(Density density, LayoutDirection layoutDirection) {
        return ((WindowInsets) this.insets$delegate.getValue()).getLeft(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getRight(Density density, LayoutDirection layoutDirection) {
        return ((WindowInsets) this.insets$delegate.getValue()).getRight(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getTop(Density density) {
        return ((WindowInsets) this.insets$delegate.getValue()).getTop(density);
    }
}
