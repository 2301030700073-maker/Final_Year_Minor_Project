package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScaffoldKt$ScaffoldLayout$contentPadding$1$1 implements PaddingValues {
    public final ParcelableSnapshotMutableState paddingHolder$delegate = Updater.mutableStateOf$default(new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f));

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM */
    public final float mo83calculateBottomPaddingD9Ej5fM() {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo83calculateBottomPaddingD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM */
    public final float mo84calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo84calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public final float mo85calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo85calculateRightPaddingu2uoSUM(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public final float mo86calculateTopPaddingD9Ej5fM() {
        return ((PaddingValues) this.paddingHolder$delegate.getValue()).mo86calculateTopPaddingD9Ej5fM();
    }
}
