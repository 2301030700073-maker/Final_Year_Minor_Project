package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TabRowKt$TabRowImpl$1$scope$1$1 {
    public final /* synthetic */ FiniteAnimationSpec $tabIndicatorAnimationSpec;
    public final ParcelableSnapshotMutableState tabPositions = Updater.mutableStateOf$default(EmptyList.INSTANCE);

    public TabRowKt$TabRowImpl$1$scope$1$1(FiniteAnimationSpec finiteAnimationSpec) {
        this.$tabIndicatorAnimationSpec = finiteAnimationSpec;
    }
}
