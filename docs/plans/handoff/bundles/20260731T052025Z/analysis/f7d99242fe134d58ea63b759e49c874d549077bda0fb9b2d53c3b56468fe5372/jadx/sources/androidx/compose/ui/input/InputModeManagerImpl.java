package androidx.compose.ui.input;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InputModeManagerImpl implements InputModeManager {
    public final ParcelableSnapshotMutableState inputMode$delegate;

    public InputModeManagerImpl(int i) {
        this.inputMode$delegate = Updater.mutableStateOf$default(new InputMode(i));
    }
}
