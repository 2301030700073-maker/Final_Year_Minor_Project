package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class q8 extends d {
    public final a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    public q8(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction) {
        super(aVar2, spliterator);
        this.h = aVar;
        this.i = intFunction;
        this.j = z6.ORDERED.i(aVar2.f);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        long j;
        boolean b = b();
        if (!b && this.j) {
            z6 z6Var = z6.SIZED;
            a aVar = this.h;
            int i = aVar.c;
            int i2 = z6Var.e;
            if ((i & i2) == i2) {
                j = aVar.F(this.b);
                y1 I = this.a.I(j, this.i);
                p8 g = ((o8) this.h).g(I, (this.j || b) ? false : true);
                this.a.Q(this.b, g);
                g2 build = I.build();
                this.k = build.count();
                this.l = g.h();
                return build;
            }
        }
        j = -1;
        y1 I2 = this.a.I(j, this.i);
        p8 g2 = ((o8) this.h).g(I2, (this.j || b) ? false : true);
        this.a.Q(this.b, g2);
        g2 build2 = I2.build();
        this.k = build2.count();
        this.l = g2.h();
        return build2;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new q8(this, spliterator);
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            if (this.j) {
                q8 q8Var = (q8) dVar;
                long j = q8Var.l;
                this.l = j;
                if (j == q8Var.k) {
                    this.l = j + ((q8) this.e).l;
                }
            }
            q8 q8Var2 = (q8) dVar;
            long j2 = q8Var2.k;
            q8 q8Var3 = (q8) this.e;
            this.k = j2 + q8Var3.k;
            g2 E = q8Var2.k == 0 ? (g2) q8Var3.f : q8Var3.k == 0 ? (g2) q8Var2.f : v3.E(this.h.H(), (g2) ((q8) this.d).f, (g2) ((q8) this.e).f);
            if (b() && this.j) {
                E = E.j(this.l, E.count(), this.i);
            }
            this.f = E;
        }
        super.onCompletion(countedCompleter);
    }

    public q8(q8 q8Var, Spliterator spliterator) {
        super(q8Var, spliterator);
        this.h = q8Var.h;
        this.i = q8Var.i;
        this.j = q8Var.j;
    }
}
