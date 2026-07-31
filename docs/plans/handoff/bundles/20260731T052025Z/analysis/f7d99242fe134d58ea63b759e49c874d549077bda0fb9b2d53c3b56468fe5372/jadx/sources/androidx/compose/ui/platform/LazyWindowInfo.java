package androidx.compose.ui.platform;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyWindowInfo implements WindowInfo {
    public ParcelableSnapshotMutableState _containerSize;
    public final ParcelableSnapshotMutableState isWindowFocused$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    public Function0 onInitializeContainerSize;
}
