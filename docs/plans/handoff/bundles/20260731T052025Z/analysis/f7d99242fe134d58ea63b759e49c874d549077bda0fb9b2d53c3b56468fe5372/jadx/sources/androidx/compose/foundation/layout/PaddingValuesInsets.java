package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PaddingValuesInsets implements WindowInsets {
    public final PaddingValues paddingValues;

    public PaddingValuesInsets(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PaddingValuesInsets) {
            return Intrinsics.areEqual(((PaddingValuesInsets) obj).paddingValues, this.paddingValues);
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getBottom(Density density) {
        return density.mo171roundToPx0680j_4(this.paddingValues.mo208calculateBottomPaddingD9Ej5fM());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getLeft(Density density, LayoutDirection layoutDirection) {
        return density.mo171roundToPx0680j_4(this.paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getRight(Density density, LayoutDirection layoutDirection) {
        return density.mo171roundToPx0680j_4(this.paddingValues.mo210calculateRightPaddingu2uoSUM(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getTop(Density density) {
        return density.mo171roundToPx0680j_4(this.paddingValues.mo211calculateTopPaddingD9Ej5fM());
    }

    public final int hashCode() {
        return this.paddingValues.hashCode();
    }

    public final String toString() {
        PaddingValues paddingValues = this.paddingValues;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return "PaddingValues(" + ((Object) Dp.m746toStringimpl(paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutDirection))) + ", " + ((Object) Dp.m746toStringimpl(paddingValues.mo211calculateTopPaddingD9Ej5fM())) + ", " + ((Object) Dp.m746toStringimpl(paddingValues.mo210calculateRightPaddingu2uoSUM(layoutDirection))) + ", " + ((Object) Dp.m746toStringimpl(paddingValues.mo208calculateBottomPaddingD9Ej5fM())) + ')';
    }
}
