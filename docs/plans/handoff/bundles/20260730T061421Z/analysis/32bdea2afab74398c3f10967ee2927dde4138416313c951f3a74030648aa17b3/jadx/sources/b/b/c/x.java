package b.b.c;

import android.view.View;

/* loaded from: classes.dex */
public class x extends b.e.i.v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f323a;

    public x(J j) {
        this.f323a = j;
    }

    @Override // b.e.i.u
    public void a(View view) {
        this.f323a.o.setAlpha(1.0f);
        this.f323a.r.d(null);
        this.f323a.r = null;
    }

    @Override // b.e.i.v, b.e.i.u
    public void b(View view) {
        this.f323a.o.setVisibility(0);
        this.f323a.o.sendAccessibilityEvent(32);
        if (this.f323a.o.getParent() instanceof View) {
            b.e.i.q.B((View) this.f323a.o.getParent());
        }
    }
}
