package b.b.f;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import b.b.f.m.m;
import b.b.f.m.o;
import b.b.g.r;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class e extends b implements m {

    /* renamed from: c, reason: collision with root package name */
    public Context f334c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContextView f335d;
    public a e;
    public WeakReference f;
    public boolean g;
    public o h;

    public e(Context context, ActionBarContextView actionBarContextView, a aVar, boolean z) {
        this.f334c = context;
        this.f335d = actionBarContextView;
        this.e = aVar;
        o oVar = new o(actionBarContextView.getContext());
        oVar.l = 1;
        this.h = oVar;
        oVar.e = this;
    }

    @Override // b.b.f.m.m
    public boolean a(o oVar, MenuItem menuItem) {
        return this.e.b(this, menuItem);
    }

    @Override // b.b.f.m.m
    public void b(o oVar) {
        i();
        r rVar = this.f335d.f518d;
        if (rVar != null) {
            rVar.n();
        }
    }

    @Override // b.b.f.b
    public void c() {
        if (this.g) {
            return;
        }
        this.g = true;
        this.f335d.sendAccessibilityEvent(32);
        this.e.d(this);
    }

    @Override // b.b.f.b
    public View d() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // b.b.f.b
    public Menu e() {
        return this.h;
    }

    @Override // b.b.f.b
    public MenuInflater f() {
        return new j(this.f335d.getContext());
    }

    @Override // b.b.f.b
    public CharSequence g() {
        return this.f335d.j;
    }

    @Override // b.b.f.b
    public CharSequence h() {
        return this.f335d.i;
    }

    @Override // b.b.f.b
    public void i() {
        this.e.a(this, this.h);
    }

    @Override // b.b.f.b
    public boolean j() {
        return this.f335d.r;
    }

    @Override // b.b.f.b
    public void k(View view) {
        this.f335d.i(view);
        this.f = view != null ? new WeakReference(view) : null;
    }

    @Override // b.b.f.b
    public void l(int i) {
        String string = this.f334c.getString(i);
        ActionBarContextView actionBarContextView = this.f335d;
        actionBarContextView.j = string;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void m(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f335d;
        actionBarContextView.j = charSequence;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void n(int i) {
        String string = this.f334c.getString(i);
        ActionBarContextView actionBarContextView = this.f335d;
        actionBarContextView.i = string;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void o(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f335d;
        actionBarContextView.i = charSequence;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void p(boolean z) {
        this.f329b = z;
        ActionBarContextView actionBarContextView = this.f335d;
        if (z != actionBarContextView.r) {
            actionBarContextView.requestLayout();
        }
        actionBarContextView.r = z;
    }
}
