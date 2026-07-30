package b.b.g;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: b.b.g.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0048g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f537a;

    public RunnableC0048g(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f537a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f537a.s();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f537a;
        actionBarOverlayLayout.A = actionBarOverlayLayout.f46d.animate().translationY(-this.f537a.f46d.getHeight()).setListener(this.f537a.B);
    }
}
