package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class b9 extends b {
    public final a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    public b9(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction) {
        super(aVar2, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = d7.ORDERED.u(aVar2.f);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        y1 F = this.a.F(-1L, this.k);
        o5 J = this.j.J(this.a.f, F);
        a aVar = this.a;
        boolean l = aVar.l(this.b, aVar.O(J));
        this.n = l;
        if (l) {
            g();
        }
        g2 build = F.build();
        this.m = build.count();
        return build;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new b9(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(w3.E(this.j.E()));
        }
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return w3.E(this.j.E());
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object C;
        d dVar = this.d;
        if (dVar != null) {
            this.n = ((b9) dVar).n | ((b9) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                C = w3.E(this.j.E());
            } else {
                if (this.l) {
                    b9 b9Var = (b9) this.d;
                    if (b9Var.n) {
                        this.m = b9Var.m;
                        C = (g2) b9Var.i();
                    }
                }
                b9 b9Var2 = (b9) this.d;
                long j = b9Var2.m;
                b9 b9Var3 = (b9) this.e;
                this.m = j + b9Var3.m;
                C = b9Var2.m == 0 ? (g2) b9Var3.i() : b9Var3.m == 0 ? (g2) b9Var2.i() : w3.C(this.j.E(), (g2) ((b9) this.d).i(), (g2) ((b9) this.e).i());
            }
            d(C);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }

    public b9(b9 b9Var, Spliterator spliterator) {
        super(b9Var, spliterator);
        this.j = b9Var.j;
        this.k = b9Var.k;
        this.l = b9Var.l;
    }
}
