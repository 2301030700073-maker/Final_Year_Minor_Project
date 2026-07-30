package b.b.g;

import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public class Q implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f474a;

    public Q(X x) {
        this.f474a = x;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f474a.getInternalPopup().b()) {
            this.f474a.b();
        }
        ViewTreeObserver viewTreeObserver = this.f474a.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        }
    }
}
