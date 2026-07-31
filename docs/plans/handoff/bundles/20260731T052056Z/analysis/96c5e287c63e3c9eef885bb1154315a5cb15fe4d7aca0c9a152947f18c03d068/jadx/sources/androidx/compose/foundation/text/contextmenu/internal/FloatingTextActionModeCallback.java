package androidx.compose.foundation.text.contextmenu.internal;

import android.graphics.Rect;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FloatingTextActionModeCallback extends ActionMode.Callback2 implements ActionMode.Callback {
    public final AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallback;

    public FloatingTextActionModeCallback(AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl) {
        this.textActionModeCallback = textActionModeCallbackImpl;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return false;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        this.textActionModeCallback.updateMenuItems(menu);
        return menu.size() > 0;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        this.textActionModeCallback.session.close();
    }

    @Override // android.view.ActionMode.Callback2
    public final void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
        androidx.compose.ui.geometry.Rect rect2 = (androidx.compose.ui.geometry.Rect) this.textActionModeCallback.positioner.invoke();
        rect.set(Math.round(rect2.left), Math.round(rect2.top), Math.round(rect2.right), Math.round(rect2.bottom));
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.textActionModeCallback.updateMenuItems(menu);
    }
}
