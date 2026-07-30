package b.e.i;

import android.view.View;
import b.b.c.U;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public WeakReference f781a;

    /* renamed from: b, reason: collision with root package name */
    public Runnable f782b = null;

    /* renamed from: c, reason: collision with root package name */
    public Runnable f783c = null;

    /* renamed from: d, reason: collision with root package name */
    public int f784d = -1;

    public t(View view) {
        this.f781a = new WeakReference(view);
    }

    public t a(float f) {
        View view = (View) this.f781a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public void b() {
        View view = (View) this.f781a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public t c(long j) {
        View view = (View) this.f781a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public t d(u uVar) {
        View view = (View) this.f781a.get();
        if (view != null) {
            e(view, null);
        }
        return this;
    }

    public final void e(View view, u uVar) {
        if (uVar != null) {
            view.animate().setListener(new r(this, uVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public t f(U u) {
        View view = (View) this.f781a.get();
        if (view != null) {
            view.animate().setUpdateListener(u != null ? new s(this, u, view) : null);
        }
        return this;
    }

    public t g(float f) {
        View view = (View) this.f781a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
