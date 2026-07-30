package b.b.f.m;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: b.b.f.m.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewOnAttachStateChangeListenerC0028e implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC0032i f378a;

    public ViewOnAttachStateChangeListenerC0028e(ViewOnKeyListenerC0032i viewOnKeyListenerC0032i) {
        this.f378a = viewOnKeyListenerC0032i;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f378a.y;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f378a.y = view.getViewTreeObserver();
            }
            ViewOnKeyListenerC0032i viewOnKeyListenerC0032i = this.f378a;
            viewOnKeyListenerC0032i.y.removeGlobalOnLayoutListener(viewOnKeyListenerC0032i.j);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
