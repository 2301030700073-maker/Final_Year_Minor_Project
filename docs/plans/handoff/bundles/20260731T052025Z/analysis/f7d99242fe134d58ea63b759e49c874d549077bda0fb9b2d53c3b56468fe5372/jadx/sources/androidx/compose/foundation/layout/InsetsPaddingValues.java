package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InsetsPaddingValues implements PaddingValues {
    public final Density density;
    public final WindowInsets insets;

    public InsetsPaddingValues(WindowInsets windowInsets, SubcomposeMeasureScope subcomposeMeasureScope) {
        this.insets = windowInsets;
        this.density = subcomposeMeasureScope;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM, reason: not valid java name */
    public final float mo208calculateBottomPaddingD9Ej5fM() {
        WindowInsets windowInsets = this.insets;
        Density density = this.density;
        return density.mo174toDpu2uoSUM(windowInsets.getBottom(density));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM, reason: not valid java name */
    public final float mo209calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        WindowInsets windowInsets = this.insets;
        Density density = this.density;
        return density.mo174toDpu2uoSUM(windowInsets.getLeft(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM, reason: not valid java name */
    public final float mo210calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        WindowInsets windowInsets = this.insets;
        Density density = this.density;
        return density.mo174toDpu2uoSUM(windowInsets.getRight(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM, reason: not valid java name */
    public final float mo211calculateTopPaddingD9Ej5fM() {
        WindowInsets windowInsets = this.insets;
        Density density = this.density;
        return density.mo174toDpu2uoSUM(windowInsets.getTop(density));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsPaddingValues)) {
            return false;
        }
        InsetsPaddingValues insetsPaddingValues = (InsetsPaddingValues) obj;
        return Intrinsics.areEqual(this.insets, insetsPaddingValues.insets) && Intrinsics.areEqual(this.density, insetsPaddingValues.density);
    }

    public final int hashCode() {
        return this.density.hashCode() + (this.insets.hashCode() * 31);
    }

    public final String toString() {
        return "InsetsPaddingValues(insets=" + this.insets + ", density=" + this.density + ')';
    }
}
