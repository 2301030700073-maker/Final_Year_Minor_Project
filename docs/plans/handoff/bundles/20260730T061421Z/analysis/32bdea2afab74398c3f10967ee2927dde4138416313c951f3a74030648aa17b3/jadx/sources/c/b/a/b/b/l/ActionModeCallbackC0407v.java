package c.b.a.b.b.l;

import android.content.Intent;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.android.launcher3.BaseDraggingActivity;
import com.android.systemui.shared.R;

/* renamed from: c.b.a.b.b.l.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ActionModeCallbackC0407v implements ActionMode.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final String f2693a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f2694b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ A f2695c;

    public ActionModeCallbackC0407v(A a2, String str, Intent intent) {
        this.f2695c = a2;
        this.f2693a = str;
        this.f2694b = intent;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        if (menuItem.getItemId() == 16908322 && !TextUtils.isEmpty(this.f2693a)) {
            this.f2695c.q(this.f2693a, 3);
            actionMode.finish();
            return true;
        }
        if (menuItem.getItemId() != R.id.hotseat_qsb_menu_item || this.f2694b == null) {
            return false;
        }
        this.f2695c.getContext().sendBroadcast(this.f2694b);
        actionMode.finish();
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        boolean z;
        actionMode.setTitle((CharSequence) null);
        actionMode.setSubtitle((CharSequence) null);
        actionMode.setTitleOptionalHint(true);
        actionMode.setTag(BaseDraggingActivity.AUTO_CANCEL_ACTION_MODE);
        if (TextUtils.isEmpty(this.f2693a)) {
            z = false;
        } else {
            menu.add(0, android.R.id.paste, 0, android.R.string.paste).setShowAsAction(1);
            z = true;
        }
        if (this.f2694b == null) {
            return z;
        }
        menu.add(0, R.id.hotseat_qsb_menu_item, 0, R.string.hotseat_qsb_preferences).setShowAsAction(8);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        A a2 = this.f2695c;
        a2.C.onFocusLost(a2.getWindowId());
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return true;
    }
}
