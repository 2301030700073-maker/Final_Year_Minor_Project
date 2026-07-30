package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class X3 extends AbstractC3017f {
    private final AbstractC3002c h;
    private final IntFunction i;
    private final boolean j;
    private long k;
    private long l;

    X3(X3 x3, Spliterator spliterator) {
        super(x3, spliterator);
        this.h = x3.h;
        this.i = x3.i;
        this.j = x3.j;
    }

    X3(AbstractC3002c abstractC3002c, AbstractC3002c abstractC3002c2, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC3002c2, spliterator);
        this.h = abstractC3002c;
        this.i = intFunction;
        this.j = EnumC3026g3.ORDERED.n(abstractC3002c2.r0());
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final Object a() {
        boolean z = !e();
        D0 C0 = this.a.C0((z && this.j && EnumC3026g3.SIZED.r(this.h.j)) ? this.h.k0(this.b) : -1L, this.i);
        W3 w3 = (W3) this.h;
        boolean z2 = this.j && z;
        V3 v3 = (V3) w3;
        v3.getClass();
        U3 u3 = new U3(v3, C0, z2);
        this.a.H0(this.b, u3);
        I0 build = C0.build();
        this.k = build.count();
        this.l = u3.b;
        return build;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        return new X3(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        I0 e0;
        Object c;
        I0 i0;
        AbstractC3017f abstractC3017f = this.d;
        if (!(abstractC3017f == null)) {
            if (this.j) {
                X3 x3 = (X3) abstractC3017f;
                long j = x3.l;
                this.l = j;
                if (j == x3.k) {
                    this.l = j + ((X3) this.e).l;
                }
            }
            X3 x32 = (X3) abstractC3017f;
            long j2 = x32.k;
            X3 x33 = (X3) this.e;
            this.k = j2 + x33.k;
            if (x32.k == 0) {
                c = x33.c();
            } else if (x33.k == 0) {
                c = x32.c();
            } else {
                e0 = AbstractC3117z0.e0(this.h.O0(), (I0) ((X3) this.d).c(), (I0) ((X3) this.e).c());
                i0 = e0;
                if (e() && this.j) {
                    i0 = i0.i(this.l, i0.count(), this.i);
                }
                g(i0);
            }
            e0 = (I0) c;
            i0 = e0;
            if (e()) {
                i0 = i0.i(this.l, i0.count(), this.i);
            }
            g(i0);
        }
        super.onCompletion(countedCompleter);
    }
}
