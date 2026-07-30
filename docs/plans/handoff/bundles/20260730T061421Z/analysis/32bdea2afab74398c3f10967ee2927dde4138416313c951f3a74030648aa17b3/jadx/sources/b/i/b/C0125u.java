package b.i.b;

import android.view.View;

/* renamed from: b.i.b.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0125u implements b.e.f.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f950a;

    public C0125u(r rVar) {
        this.f950a = rVar;
    }

    @Override // b.e.f.a
    public void onCancel() {
        if (this.f950a.getAnimatingAway() != null) {
            View animatingAway = this.f950a.getAnimatingAway();
            this.f950a.setAnimatingAway(null);
            animatingAway.clearAnimation();
        }
        this.f950a.setAnimator(null);
    }
}
