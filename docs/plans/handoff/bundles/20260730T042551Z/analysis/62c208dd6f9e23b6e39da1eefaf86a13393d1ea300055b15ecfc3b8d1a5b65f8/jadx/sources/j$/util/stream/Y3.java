package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class Y3 extends AbstractC3007d {
    private final AbstractC3002c j;
    private final IntFunction k;
    private final boolean l;
    private long m;
    private boolean n;
    private volatile boolean o;

    Y3(Y3 y3, Spliterator spliterator) {
        super(y3, spliterator);
        this.j = y3.j;
        this.k = y3.k;
        this.l = y3.l;
    }

    Y3(AbstractC3002c abstractC3002c, AbstractC3002c abstractC3002c2, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC3002c2, spliterator);
        this.j = abstractC3002c;
        this.k = intFunction;
        this.l = EnumC3026g3.ORDERED.n(abstractC3002c2.r0());
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final Object a() {
        D0 C0 = this.a.C0(-1L, this.k);
        InterfaceC3079r2 V0 = this.j.V0(this.a.r0(), C0);
        AbstractC3117z0 abstractC3117z0 = this.a;
        boolean g0 = abstractC3117z0.g0(this.b, abstractC3117z0.I0(V0));
        this.n = g0;
        if (g0) {
            j();
        }
        I0 build = C0.build();
        this.m = build.count();
        return build;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        return new Y3(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC3007d
    protected final void i() {
        this.i = true;
        if (this.l && this.o) {
            g(AbstractC3117z0.j0(this.j.O0()));
        }
    }

    @Override // j$.util.stream.AbstractC3007d
    protected final Object k() {
        return AbstractC3117z0.j0(this.j.O0());
    }

    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object e0;
        Object c;
        AbstractC3017f abstractC3017f = this.d;
        if (!(abstractC3017f == null)) {
            this.n = ((Y3) abstractC3017f).n | ((Y3) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                e0 = AbstractC3117z0.j0(this.j.O0());
            } else {
                if (this.l) {
                    Y3 y3 = (Y3) this.d;
                    if (y3.n) {
                        this.m = y3.m;
                        e0 = (I0) y3.c();
                    }
                }
                Y3 y32 = (Y3) this.d;
                long j = y32.m;
                Y3 y33 = (Y3) this.e;
                this.m = j + y33.m;
                if (y32.m == 0) {
                    c = y33.c();
                } else if (y33.m == 0) {
                    c = y32.c();
                } else {
                    e0 = AbstractC3117z0.e0(this.j.O0(), (I0) ((Y3) this.d).c(), (I0) ((Y3) this.e).c());
                }
                e0 = (I0) c;
            }
            g(e0);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }
}
