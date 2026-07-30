package c.b.a.b.a.a.a.a.c;

/* loaded from: classes.dex */
public final /* synthetic */ class s0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final x0 f2495a;

    /* renamed from: b, reason: collision with root package name */
    public final c.b.a.b.a.a.a.a.a.a.x f2496b;

    public s0(x0 x0Var, c.b.a.b.a.a.a.a.a.a.x xVar) {
        this.f2495a = x0Var;
        this.f2496b = xVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        x0 x0Var = this.f2495a;
        c.b.a.b.a.a.a.a.a.a.x xVar = this.f2496b;
        synchronized (x0Var) {
            if (x0Var.f2520c.l(x0Var.m)) {
                if (xVar.e != null) {
                    Q i = x0Var.f2520c.f2459a.i();
                    String str = xVar.e;
                    c.b.a.b.a.a.a.a.c.y0.d.a(str);
                    i.a(str);
                }
                C0371j c0371j = x0Var.f2520c.f2460b;
                C0368g c0368g = x0Var.f2520c;
                c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
                c0371j.h = xVar;
                c0371j.j = c0368g;
            }
        }
    }
}
