package c.b.a.b.a.a.a.a.c;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;

/* loaded from: classes.dex */
public class w0 extends ActionMode.Callback2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f2515a;

    public w0(x0 x0Var) {
        this.f2515a = x0Var;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        boolean h;
        synchronized (this.f2515a) {
            h = this.f2515a.f2520c.f2460b.h(menuItem);
        }
        return h;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        synchronized (this.f2515a) {
            if (!this.f2515a.f2520c.l(this.f2515a.m)) {
                return false;
            }
            this.f2515a.f2520c.f2460b.b(actionMode, menu, this.f2515a.f2520c);
            this.f2515a.f2520c.f2460b.j(SuggestParcelables$InteractionType.LONG_PRESS);
            return true;
        }
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        synchronized (this.f2515a) {
            this.f2515a.f2520c.f2460b.i(SuggestParcelables$InteractionType.LONG_PRESS);
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        synchronized (this.f2515a) {
            if (!this.f2515a.f2520c.l(this.f2515a.m)) {
                return false;
            }
            this.f2515a.f2520c.f2460b.b(actionMode, menu, this.f2515a.f2520c);
            if (this.f2515a.i != this.f2515a.m) {
                this.f2515a.i = this.f2515a.m;
                this.f2515a.f2520c.f2460b.k();
            }
            return true;
        }
    }
}
