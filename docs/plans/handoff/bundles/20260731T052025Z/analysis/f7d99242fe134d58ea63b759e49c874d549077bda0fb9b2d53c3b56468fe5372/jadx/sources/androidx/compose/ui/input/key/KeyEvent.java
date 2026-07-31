package androidx.compose.ui.input.key;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KeyEvent {
    public final android.view.KeyEvent nativeKeyEvent;

    public final boolean equals(Object obj) {
        if (obj instanceof KeyEvent) {
            return Intrinsics.areEqual(this.nativeKeyEvent, ((KeyEvent) obj).nativeKeyEvent);
        }
        return false;
    }

    public final int hashCode() {
        return this.nativeKeyEvent.hashCode();
    }

    public final String toString() {
        return "KeyEvent(nativeKeyEvent=" + this.nativeKeyEvent + ')';
    }
}
