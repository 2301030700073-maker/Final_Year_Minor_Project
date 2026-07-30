package defpackage;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: Pi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewTreeObserverOnDrawListenerC0430Pi implements ViewTreeObserver.OnDrawListener {

    /* renamed from: do, reason: not valid java name */
    @SuppressLint({"ThreadPoolCreation"})
    public final Handler f2815do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Runnable f2816do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<View> f2817do;

    public ViewTreeObserverOnDrawListenerC0430Pi(View view, LH lh) {
        this.f2817do = new AtomicReference<>(view);
        this.f2816do = lh;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        final View andSet = this.f2817do.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: Ni
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ViewTreeObserverOnDrawListenerC0430Pi viewTreeObserverOnDrawListenerC0430Pi = ViewTreeObserverOnDrawListenerC0430Pi.this;
                viewTreeObserverOnDrawListenerC0430Pi.getClass();
                andSet.getViewTreeObserver().removeOnDrawListener(viewTreeObserverOnDrawListenerC0430Pi);
            }
        });
        this.f2815do.postAtFrontOfQueue(this.f2816do);
    }
}
