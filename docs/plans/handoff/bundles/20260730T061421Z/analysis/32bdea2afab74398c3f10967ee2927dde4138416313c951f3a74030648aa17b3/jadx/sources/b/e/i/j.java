package b.e.i;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class j implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f768a;

    /* renamed from: b, reason: collision with root package name */
    public ViewTreeObserver f769b;

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f770c;

    public j(View view, Runnable runnable) {
        this.f768a = view;
        this.f769b = view.getViewTreeObserver();
        this.f770c = runnable;
    }

    public static j a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        j jVar = new j(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(jVar);
        view.addOnAttachStateChangeListener(jVar);
        return jVar;
    }

    public void b() {
        if (this.f769b.isAlive()) {
            this.f769b.removeOnPreDrawListener(this);
        } else {
            this.f768a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f768a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f770c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f769b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
