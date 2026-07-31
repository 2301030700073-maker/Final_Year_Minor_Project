package androidx.navigationevent.compose;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.navigation3.scene.SceneInfo;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventTransitionState;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavigationEventState {
    public final ParcelableSnapshotMutableState backInfo$delegate;
    public final ParcelableSnapshotMutableState currentInfo$delegate;
    public final ParcelableSnapshotMutableState forwardInfo$delegate;
    public NavigationEventHandler sourceHandler;
    public final ParcelableSnapshotMutableState transitionState$delegate = Updater.mutableStateOf$default(NavigationEventTransitionState.Idle.INSTANCE);

    public NavigationEventState(SceneInfo sceneInfo, List list, List list2) {
        this.backInfo$delegate = Updater.mutableStateOf$default(list);
        this.currentInfo$delegate = Updater.mutableStateOf$default(sceneInfo);
        this.forwardInfo$delegate = Updater.mutableStateOf$default(list2);
    }
}
