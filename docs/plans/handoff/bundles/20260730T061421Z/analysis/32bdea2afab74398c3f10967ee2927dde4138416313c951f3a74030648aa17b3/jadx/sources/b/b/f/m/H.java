package b.b.f.m;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public class H implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f365a;

    public H(J j) {
        this.f365a = j;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.f365a.b()) {
            J j = this.f365a;
            if (j.i.A) {
                return;
            }
            View view = j.n;
            if (view == null || !view.isShown()) {
                this.f365a.dismiss();
            } else {
                this.f365a.i.f();
            }
        }
    }
}
