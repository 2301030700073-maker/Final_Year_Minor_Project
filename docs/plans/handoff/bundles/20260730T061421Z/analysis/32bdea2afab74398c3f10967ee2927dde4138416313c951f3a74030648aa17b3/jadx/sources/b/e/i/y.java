package b.e.i;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class y extends C {

    /* renamed from: b, reason: collision with root package name */
    public final WindowInsets f787b;

    /* renamed from: c, reason: collision with root package name */
    public b.e.d.b f788c;

    public y(D d2, WindowInsets windowInsets) {
        super(d2);
        this.f788c = null;
        this.f787b = windowInsets;
    }

    @Override // b.e.i.C
    public final b.e.d.b f() {
        if (this.f788c == null) {
            this.f788c = b.e.d.b.a(this.f787b.getSystemWindowInsetLeft(), this.f787b.getSystemWindowInsetTop(), this.f787b.getSystemWindowInsetRight(), this.f787b.getSystemWindowInsetBottom());
        }
        return this.f788c;
    }

    @Override // b.e.i.C
    public D g(int i, int i2, int i3, int i4) {
        w wVar = new w(D.h(this.f787b));
        wVar.c(D.f(f(), i, i2, i3, i4));
        wVar.b(D.f(e(), i, i2, i3, i4));
        return wVar.a();
    }

    @Override // b.e.i.C
    public boolean i() {
        return this.f787b.isRound();
    }
}
