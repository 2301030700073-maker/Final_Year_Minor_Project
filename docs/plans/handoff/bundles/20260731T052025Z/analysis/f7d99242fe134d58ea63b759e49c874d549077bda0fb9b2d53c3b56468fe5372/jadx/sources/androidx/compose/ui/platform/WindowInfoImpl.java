package androidx.compose.ui.platform;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WindowInfoImpl implements WindowInfo {
    public static final ParcelableSnapshotMutableState GlobalKeyboardModifiers = Updater.mutableStateOf$default(new PointerKeyboardModifiers(0));
}
