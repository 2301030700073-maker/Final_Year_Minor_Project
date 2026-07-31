package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class r8 extends b {
    public final a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    public r8(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction) {
        super(aVar2, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = z6.ORDERED.i(aVar2.f);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        y1 I = this.a.I(-1L, this.k);
        l5 M = this.j.M(this.a.f, I);
        a aVar = this.a;
        boolean A = aVar.A(this.b, aVar.R(M));
        this.n = A;
        if (A) {
            g();
        }
        g2 build = I.build();
        this.m = build.count();
        return build;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new r8(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(v3.G(this.j.H()));
        }
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return v3.G(this.j.H());
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object E;
        d dVar = this.d;
        if (dVar != null) {
            this.n = ((r8) dVar).n | ((r8) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                E = v3.G(this.j.H());
            } else {
                if (this.l) {
                    r8 r8Var = (r8) this.d;
                    if (r8Var.n) {
                        this.m = r8Var.m;
                        E = (g2) r8Var.i();
                    }
                }
                r8 r8Var2 = (r8) this.d;
                long j = r8Var2.m;
                r8 r8Var3 = (r8) this.e;
                this.m = j + r8Var3.m;
                E = r8Var2.m == 0 ? (g2) r8Var3.i() : r8Var3.m == 0 ? (g2) r8Var2.i() : v3.E(this.j.H(), (g2) ((r8) this.d).i(), (g2) ((r8) this.e).i());
            }
            d(E);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }

    public r8(r8 r8Var, Spliterator spliterator) {
        super(r8Var, spliterator);
        this.j = r8Var.j;
        this.k = r8Var.k;
        this.l = r8Var.l;
    }
}
