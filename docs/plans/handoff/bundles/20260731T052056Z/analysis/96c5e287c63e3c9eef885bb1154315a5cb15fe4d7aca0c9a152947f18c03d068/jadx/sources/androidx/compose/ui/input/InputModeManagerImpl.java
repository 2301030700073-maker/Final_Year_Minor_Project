package androidx.compose.ui.input;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InputModeManagerImpl implements InputModeManager {
    public final ParcelableSnapshotMutableState inputMode$delegate;

    public InputModeManagerImpl(int i) {
        this.inputMode$delegate = Updater.mutableStateOf$default(new InputMode(i));
    }
}
