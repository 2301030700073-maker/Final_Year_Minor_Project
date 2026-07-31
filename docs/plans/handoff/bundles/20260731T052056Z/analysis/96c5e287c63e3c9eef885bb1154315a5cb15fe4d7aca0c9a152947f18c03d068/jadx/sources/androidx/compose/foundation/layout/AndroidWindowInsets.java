package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidWindowInsets implements WindowInsets {
    public final ParcelableSnapshotMutableState insets$delegate = Updater.mutableStateOf$default(Insets.NONE);
    public final ParcelableSnapshotMutableState isVisible$delegate = Updater.mutableStateOf$default(Boolean.TRUE);
    public final String name;
    public final int type;

    public AndroidWindowInsets(int i, String str) {
        this.type = i;
        this.name = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AndroidWindowInsets) {
            return this.type == ((AndroidWindowInsets) obj).type;
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getBottom(Density density) {
        return getInsets$foundation_layout().bottom;
    }

    public final Insets getInsets$foundation_layout() {
        return (Insets) this.insets$delegate.getValue();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getLeft(Density density, LayoutDirection layoutDirection) {
        return getInsets$foundation_layout().left;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getRight(Density density, LayoutDirection layoutDirection) {
        return getInsets$foundation_layout().right;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getTop(Density density) {
        return getInsets$foundation_layout().top;
    }

    public final int hashCode() {
        return this.type;
    }

    public final void setVisible(boolean z) {
        this.isVisible$delegate.setValue(Boolean.valueOf(z));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.name);
        sb.append('(');
        sb.append(getInsets$foundation_layout().left);
        sb.append(", ");
        sb.append(getInsets$foundation_layout().top);
        sb.append(", ");
        sb.append(getInsets$foundation_layout().right);
        sb.append(", ");
        return Animation.CC.m(sb, getInsets$foundation_layout().bottom, ')');
    }

    public final void update$foundation_layout(WindowInsetsCompat windowInsetsCompat, int i) {
        int i2 = this.type;
        if (i == 0 || (i & i2) != 0) {
            this.insets$delegate.setValue(windowInsetsCompat.mImpl.getInsets(i2));
            setVisible(windowInsetsCompat.mImpl.isVisible(i2));
        }
    }
}
