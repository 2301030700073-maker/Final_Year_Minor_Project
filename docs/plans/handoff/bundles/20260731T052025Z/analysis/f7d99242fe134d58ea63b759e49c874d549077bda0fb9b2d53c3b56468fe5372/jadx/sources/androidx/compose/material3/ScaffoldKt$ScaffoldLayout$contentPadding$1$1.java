package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScaffoldKt$ScaffoldLayout$contentPadding$1$1 implements PaddingValues {
    public final ParcelableSnapshotMutableState paddingHolder$delegate = Updater.mutableStateOf$default(new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f));

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM */
    public final float mo208calculateBottomPaddingD9Ej5fM() {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo208calculateBottomPaddingD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM */
    public final float mo209calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo209calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public final float mo210calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo210calculateRightPaddingu2uoSUM(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public final float mo211calculateTopPaddingD9Ej5fM() {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo211calculateTopPaddingD9Ej5fM();
    }
}
