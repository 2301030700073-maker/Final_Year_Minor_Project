package b.b.g;

import android.view.ViewParent;

/* renamed from: b.b.g.n0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0063n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC0067p0 f564a;

    public RunnableC0063n0(AbstractViewOnTouchListenerC0067p0 abstractViewOnTouchListenerC0067p0) {
        this.f564a = abstractViewOnTouchListenerC0067p0;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewParent parent = this.f564a.f570d.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }
}
