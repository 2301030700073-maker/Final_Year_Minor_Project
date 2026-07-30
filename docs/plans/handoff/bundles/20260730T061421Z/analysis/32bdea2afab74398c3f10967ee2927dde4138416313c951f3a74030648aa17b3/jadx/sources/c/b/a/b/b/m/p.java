package c.b.a.b.b.m;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import c.b.a.b.a.a.a.a.c.C0371j;
import com.android.launcher3.BaseDraggingActivity;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class p extends ActionMode.Callback2 {

    /* renamed from: a, reason: collision with root package name */
    public final C0371j f2724a;

    /* renamed from: b, reason: collision with root package name */
    public final t f2725b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f2726c;

    public p(t tVar, C0371j c0371j, t tVar2) {
        this.f2726c = tVar;
        this.f2724a = c0371j;
        this.f2725b = tVar2;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f2724a.h(menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.setTitle((CharSequence) null);
        actionMode.setSubtitle((CharSequence) null);
        actionMode.setTitleOptionalHint(true);
        C0371j c0371j = this.f2724a;
        c0371j.b(null, menu, c0371j.j);
        actionMode.setTag(BaseDraggingActivity.AUTO_CANCEL_ACTION_MODE);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f2725b.g = null;
    }

    @Override // android.view.ActionMode.Callback2
    public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
        this.f2724a.g(rect);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        rect.offset(iArr[0], iArr[1]);
        Resources resources = this.f2726c.f2731a.getResources();
        rect.offset(-resources.getDimensionPixelSize(R.dimen.suggest_menu_margin_left), -resources.getDimensionPixelSize(R.dimen.suggest_menu_margin_top));
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}
