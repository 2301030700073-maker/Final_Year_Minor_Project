package b.e.i;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class z extends y {

    /* renamed from: d, reason: collision with root package name */
    public b.e.d.b f789d;

    public z(D d2, WindowInsets windowInsets) {
        super(d2, windowInsets);
        this.f789d = null;
    }

    @Override // b.e.i.C
    public D b() {
        return D.h(this.f787b.consumeStableInsets());
    }

    @Override // b.e.i.C
    public D c() {
        return D.h(this.f787b.consumeSystemWindowInsets());
    }

    @Override // b.e.i.C
    public final b.e.d.b e() {
        if (this.f789d == null) {
            this.f789d = b.e.d.b.a(this.f787b.getStableInsetLeft(), this.f787b.getStableInsetTop(), this.f787b.getStableInsetRight(), this.f787b.getStableInsetBottom());
        }
        return this.f789d;
    }

    @Override // b.e.i.C
    public boolean h() {
        return this.f787b.isConsumed();
    }
}
