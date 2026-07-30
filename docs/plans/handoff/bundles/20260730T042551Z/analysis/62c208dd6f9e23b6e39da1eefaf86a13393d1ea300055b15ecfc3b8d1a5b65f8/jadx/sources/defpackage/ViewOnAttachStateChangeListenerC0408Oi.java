package defpackage;

import android.view.View;

/* renamed from: Oi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnAttachStateChangeListenerC0408Oi implements View.OnAttachStateChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ViewTreeObserverOnDrawListenerC0430Pi f2666do;

    public ViewOnAttachStateChangeListenerC0408Oi(ViewTreeObserverOnDrawListenerC0430Pi viewTreeObserverOnDrawListenerC0430Pi) {
        this.f2666do = viewTreeObserverOnDrawListenerC0430Pi;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnDrawListener(this.f2666do);
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
    }
}
