package b.b.c;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class V extends b.b.f.b implements b.b.f.m.m {

    /* renamed from: c, reason: collision with root package name */
    public final Context f284c;

    /* renamed from: d, reason: collision with root package name */
    public final b.b.f.m.o f285d;
    public b.b.f.a e;
    public WeakReference f;
    public final /* synthetic */ W g;

    public V(W w, Context context, b.b.f.a aVar) {
        this.g = w;
        this.f284c = context;
        this.e = aVar;
        b.b.f.m.o oVar = new b.b.f.m.o(context);
        oVar.l = 1;
        this.f285d = oVar;
        oVar.e = this;
    }

    @Override // b.b.f.m.m
    public boolean a(b.b.f.m.o oVar, MenuItem menuItem) {
        b.b.f.a aVar = this.e;
        if (aVar != null) {
            return aVar.b(this, menuItem);
        }
        return false;
    }

    @Override // b.b.f.m.m
    public void b(b.b.f.m.o oVar) {
        if (this.e == null) {
            return;
        }
        i();
        b.b.g.r rVar = this.g.f.f518d;
        if (rVar != null) {
            rVar.n();
        }
    }

    @Override // b.b.f.b
    public void c() {
        W w = this.g;
        if (w.i != this) {
            return;
        }
        if (!w.q) {
            this.e.d(this);
        } else {
            w.j = this;
            w.k = this.e;
        }
        this.e = null;
        this.g.k(false);
        ActionBarContextView actionBarContextView = this.g.f;
        if (actionBarContextView.k == null) {
            actionBarContextView.h();
        }
        this.g.e.n().sendAccessibilityEvent(32);
        W w2 = this.g;
        w2.f288c.w(w2.v);
        this.g.i = null;
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
        return this.f285d;
    }

    @Override // b.b.f.b
    public MenuInflater f() {
        return new b.b.f.j(this.f284c);
    }

    @Override // b.b.f.b
    public CharSequence g() {
        return this.g.f.j;
    }

    @Override // b.b.f.b
    public CharSequence h() {
        return this.g.f.i;
    }

    @Override // b.b.f.b
    public void i() {
        if (this.g.i != this) {
            return;
        }
        this.f285d.y();
        try {
            this.e.a(this, this.f285d);
        } finally {
            this.f285d.x();
        }
    }

    @Override // b.b.f.b
    public boolean j() {
        return this.g.f.r;
    }

    @Override // b.b.f.b
    public void k(View view) {
        this.g.f.i(view);
        this.f = new WeakReference(view);
    }

    @Override // b.b.f.b
    public void l(int i) {
        String string = this.g.f286a.getResources().getString(i);
        ActionBarContextView actionBarContextView = this.g.f;
        actionBarContextView.j = string;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void m(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.g.f;
        actionBarContextView.j = charSequence;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void n(int i) {
        String string = this.g.f286a.getResources().getString(i);
        ActionBarContextView actionBarContextView = this.g.f;
        actionBarContextView.i = string;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void o(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.g.f;
        actionBarContextView.i = charSequence;
        actionBarContextView.g();
    }

    @Override // b.b.f.b
    public void p(boolean z) {
        this.f329b = z;
        ActionBarContextView actionBarContextView = this.g.f;
        if (z != actionBarContextView.r) {
            actionBarContextView.requestLayout();
        }
        actionBarContextView.r = z;
    }
}
