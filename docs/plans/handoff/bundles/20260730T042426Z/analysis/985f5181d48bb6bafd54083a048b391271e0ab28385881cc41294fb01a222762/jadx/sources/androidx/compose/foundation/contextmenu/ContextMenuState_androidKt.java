package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.contextmenu.ContextMenuState;

/* compiled from: ContextMenuState.android.kt */
/* loaded from: classes.dex */
public abstract class ContextMenuState_androidKt {
    public static final void close(ContextMenuState contextMenuState) {
        contextMenuState.setStatus(ContextMenuState.Status.Closed.INSTANCE);
    }
}
