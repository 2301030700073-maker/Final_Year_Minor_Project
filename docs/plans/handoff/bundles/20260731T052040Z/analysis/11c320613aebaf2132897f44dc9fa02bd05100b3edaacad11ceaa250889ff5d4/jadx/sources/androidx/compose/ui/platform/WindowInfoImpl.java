package androidx.compose.ui.platform;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WindowInfoImpl implements WindowInfo {
    public static final ParcelableSnapshotMutableState GlobalKeyboardModifiers = Updater.mutableStateOf$default(new PointerKeyboardModifiers(0));
}
