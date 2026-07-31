package androidx.compose.ui.input;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InputModeManagerImpl implements InputModeManager {
    public final ParcelableSnapshotMutableState inputMode$delegate;

    public InputModeManagerImpl(int i) {
        this.inputMode$delegate = Updater.mutableStateOf$default(new InputMode(i));
    }
}
