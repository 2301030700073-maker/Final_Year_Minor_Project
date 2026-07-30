package b.b.f.m;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public class I implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f366a;

    public I(J j) {
        this.f366a = j;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f366a.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f366a.p = view.getViewTreeObserver();
            }
            J j = this.f366a;
            j.p.removeGlobalOnLayoutListener(j.j);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
