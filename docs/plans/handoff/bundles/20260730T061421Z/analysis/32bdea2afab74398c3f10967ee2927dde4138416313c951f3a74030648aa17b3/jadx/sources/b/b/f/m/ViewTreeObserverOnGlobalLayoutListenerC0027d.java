package b.b.f.m;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Iterator;

/* renamed from: b.b.f.m.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewTreeObserverOnGlobalLayoutListenerC0027d implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC0032i f377a;

    public ViewTreeObserverOnGlobalLayoutListenerC0027d(ViewOnKeyListenerC0032i viewOnKeyListenerC0032i) {
        this.f377a = viewOnKeyListenerC0032i;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f377a.b() || this.f377a.i.size() <= 0 || ((C0031h) this.f377a.i.get(0)).f384a.A) {
            return;
        }
        View view = this.f377a.p;
        if (view == null || !view.isShown()) {
            this.f377a.dismiss();
            return;
        }
        Iterator it = this.f377a.i.iterator();
        while (it.hasNext()) {
            ((C0031h) it.next()).f384a.f();
        }
    }
}
