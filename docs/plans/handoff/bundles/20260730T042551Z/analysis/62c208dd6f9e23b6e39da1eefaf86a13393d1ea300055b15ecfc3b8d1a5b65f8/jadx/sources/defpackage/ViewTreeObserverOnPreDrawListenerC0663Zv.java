package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: Zv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC0663Zv implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final View f4917do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewTreeObserver f4918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Runnable f4919do;

    public ViewTreeObserverOnPreDrawListenerC0663Zv(View view, Runnable runnable) {
        this.f4917do = view;
        this.f4918do = view.getViewTreeObserver();
        this.f4919do = runnable;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3081do(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        ViewTreeObserverOnPreDrawListenerC0663Zv viewTreeObserverOnPreDrawListenerC0663Zv = new ViewTreeObserverOnPreDrawListenerC0663Zv(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0663Zv);
        view.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC0663Zv);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean isAlive = this.f4918do.isAlive();
        View view = this.f4917do;
        if (isAlive) {
            this.f4918do.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f4919do.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f4918do = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean isAlive = this.f4918do.isAlive();
        View view2 = this.f4917do;
        if (isAlive) {
            this.f4918do.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
