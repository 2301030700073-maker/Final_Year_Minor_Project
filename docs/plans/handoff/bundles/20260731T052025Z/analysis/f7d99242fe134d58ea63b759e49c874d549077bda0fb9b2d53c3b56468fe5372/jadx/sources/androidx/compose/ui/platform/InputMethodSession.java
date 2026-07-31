package androidx.compose.ui.platform;

import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.WeakReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InputMethodSession {
    public boolean disposed;
    public final LayoutNode$_foldedChildren$1 onAllConnectionsClosed;
    public final LegacyTextInputMethodRequest request;
    public final Object lock = new Object();
    public final MutableVector connections = new MutableVector(new WeakReference[16]);

    public InputMethodSession(LegacyTextInputMethodRequest legacyTextInputMethodRequest, LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1) {
        this.request = legacyTextInputMethodRequest;
        this.onAllConnectionsClosed = layoutNode$_foldedChildren$1;
    }
}
