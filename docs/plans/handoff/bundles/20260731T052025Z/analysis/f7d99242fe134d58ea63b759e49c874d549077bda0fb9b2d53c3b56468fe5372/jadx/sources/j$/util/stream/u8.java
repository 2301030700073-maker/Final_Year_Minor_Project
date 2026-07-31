package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class u8 extends b {
    public final a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    public u8(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction) {
        super(aVar2, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = z6.ORDERED.u(aVar2.f);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        y1 I = this.a.I(-1L, this.k);
        l5 M = this.j.M(this.a.f, I);
        a aVar = this.a;
        boolean l = aVar.l(this.b, aVar.R(M));
        this.n = l;
        if (l) {
            g();
        }
        g2 build = I.build();
        this.m = build.count();
        return build;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new u8(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(v3.H(this.j.H()));
        }
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return v3.H(this.j.H());
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object F;
        d dVar = this.d;
        if (dVar != null) {
            this.n = ((u8) dVar).n | ((u8) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                F = v3.H(this.j.H());
            } else {
                if (this.l) {
                    u8 u8Var = (u8) this.d;
                    if (u8Var.n) {
                        this.m = u8Var.m;
                        F = (g2) u8Var.i();
                    }
                }
                u8 u8Var2 = (u8) this.d;
                long j = u8Var2.m;
                u8 u8Var3 = (u8) this.e;
                this.m = j + u8Var3.m;
                F = u8Var2.m == 0 ? (g2) u8Var3.i() : u8Var3.m == 0 ? (g2) u8Var2.i() : v3.F(this.j.H(), (g2) ((u8) this.d).i(), (g2) ((u8) this.e).i());
            }
            d(F);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }

    public u8(u8 u8Var, Spliterator spliterator) {
        super(u8Var, spliterator);
        this.j = u8Var.j;
        this.k = u8Var.k;
        this.l = u8Var.l;
    }
}
