package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class t8 extends d {
    public final a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    public t8(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction) {
        super(aVar2, spliterator);
        this.h = aVar;
        this.i = intFunction;
        this.j = z6.ORDERED.u(aVar2.f);
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
                j = aVar.B(this.b);
                y1 I = this.a.I(j, this.i);
                s8 f = ((r8) this.h).f(I, (this.j || b) ? false : true);
                this.a.Q(this.b, f);
                g2 build = I.build();
                this.k = build.count();
                this.l = f.h();
                return build;
            }
        }
        j = -1;
        y1 I2 = this.a.I(j, this.i);
        s8 f2 = ((r8) this.h).f(I2, (this.j || b) ? false : true);
        this.a.Q(this.b, f2);
        g2 build2 = I2.build();
        this.k = build2.count();
        this.l = f2.h();
        return build2;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new t8(this, spliterator);
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            if (this.j) {
                t8 t8Var = (t8) dVar;
                long j = t8Var.l;
                this.l = j;
                if (j == t8Var.k) {
                    this.l = j + ((t8) this.e).l;
                }
            }
            t8 t8Var2 = (t8) dVar;
            long j2 = t8Var2.k;
            t8 t8Var3 = (t8) this.e;
            this.k = j2 + t8Var3.k;
            g2 F = t8Var2.k == 0 ? (g2) t8Var3.f : t8Var3.k == 0 ? (g2) t8Var2.f : v3.F(this.h.H(), (g2) ((t8) this.d).f, (g2) ((t8) this.e).f);
            if (b() && this.j) {
                F = F.k(this.l, F.count(), this.i);
            }
            this.f = F;
        }
        super.onCompletion(countedCompleter);
    }

    public t8(t8 t8Var, Spliterator spliterator) {
        super(t8Var, spliterator);
        this.h = t8Var.h;
        this.i = t8Var.i;
        this.j = t8Var.j;
    }
}
