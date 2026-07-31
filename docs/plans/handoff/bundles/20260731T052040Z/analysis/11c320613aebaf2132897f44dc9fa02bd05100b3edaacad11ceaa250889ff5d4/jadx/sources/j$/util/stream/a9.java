package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class a9 extends d {
    public final a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    public a9(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction) {
        super(aVar2, spliterator);
        this.h = aVar;
        this.i = intFunction;
        this.j = d7.ORDERED.u(aVar2.f);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        long j;
        boolean b = b();
        if (!b && this.j) {
            d7 d7Var = d7.SIZED;
            a aVar = this.h;
            int i = aVar.c;
            int i2 = d7Var.e;
            if ((i & i2) == i2) {
                j = aVar.v(this.b);
                y1 F = this.a.F(j, this.i);
                z8 f = ((y8) this.h).f(F, (this.j || b) ? false : true);
                this.a.N(this.b, f);
                g2 build = F.build();
                this.k = build.count();
                this.l = f.h();
                return build;
            }
        }
        j = -1;
        y1 F2 = this.a.F(j, this.i);
        z8 f2 = ((y8) this.h).f(F2, (this.j || b) ? false : true);
        this.a.N(this.b, f2);
        g2 build2 = F2.build();
        this.k = build2.count();
        this.l = f2.h();
        return build2;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new a9(this, spliterator);
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            if (this.j) {
                a9 a9Var = (a9) dVar;
                long j = a9Var.l;
                this.l = j;
                if (j == a9Var.k) {
                    this.l = j + ((a9) this.e).l;
                }
            }
            a9 a9Var2 = (a9) dVar;
            long j2 = a9Var2.k;
            a9 a9Var3 = (a9) this.e;
            this.k = j2 + a9Var3.k;
            g2 C = a9Var2.k == 0 ? (g2) a9Var3.f : a9Var3.k == 0 ? (g2) a9Var2.f : w3.C(this.h.E(), (g2) ((a9) this.d).f, (g2) ((a9) this.e).f);
            if (b() && this.j) {
                C = C.k(this.l, C.count(), this.i);
            }
            this.f = C;
        }
        super.onCompletion(countedCompleter);
    }

    public a9(a9 a9Var, Spliterator spliterator) {
        super(a9Var, spliterator);
        this.h = a9Var.h;
        this.i = a9Var.i;
        this.j = a9Var.j;
    }
}
