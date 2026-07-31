package androidx.compose.ui.platform;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WindowInfoImpl implements WindowInfo {
    public static final ParcelableSnapshotMutableState GlobalKeyboardModifiers = Updater.mutableStateOf$default(new PointerKeyboardModifiers(0));
}
