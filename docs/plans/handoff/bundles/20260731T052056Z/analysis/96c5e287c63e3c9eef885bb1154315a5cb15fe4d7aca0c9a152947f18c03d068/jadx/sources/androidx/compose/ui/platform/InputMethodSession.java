package androidx.compose.ui.platform;

import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.WeakReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
