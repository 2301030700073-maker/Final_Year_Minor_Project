package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3002c extends AbstractC3117z0 implements InterfaceC3032i {
    private final AbstractC3002c h;
    private final AbstractC3002c i;
    protected final int j;
    private AbstractC3002c k;
    private int l;
    private int m;
    private Spliterator n;
    private boolean o;
    private boolean p;
    private Runnable q;
    private boolean r;

    AbstractC3002c(Spliterator spliterator, int i, boolean z) {
        this.i = null;
        this.n = spliterator;
        this.h = this;
        int i2 = EnumC3026g3.g & i;
        this.j = i2;
        this.m = (~(i2 << 1)) & EnumC3026g3.l;
        this.l = 0;
        this.r = z;
    }

    AbstractC3002c(AbstractC3002c abstractC3002c, int i) {
        if (abstractC3002c.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3002c.o = true;
        abstractC3002c.k = this;
        this.i = abstractC3002c;
        this.j = EnumC3026g3.h & i;
        this.m = EnumC3026g3.i(i, abstractC3002c.m);
        AbstractC3002c abstractC3002c2 = abstractC3002c.h;
        this.h = abstractC3002c2;
        if (U0()) {
            abstractC3002c2.p = true;
        }
        this.l = abstractC3002c.l + 1;
    }

    private Spliterator W0(int i) {
        int i2;
        int i3;
        AbstractC3002c abstractC3002c = this.h;
        Spliterator spliterator = abstractC3002c.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC3002c.n = null;
        if (abstractC3002c.r && abstractC3002c.p) {
            AbstractC3002c abstractC3002c2 = abstractC3002c.k;
            int i4 = 1;
            while (abstractC3002c != this) {
                int i5 = abstractC3002c2.j;
                if (abstractC3002c2.U0()) {
                    if (EnumC3026g3.SHORT_CIRCUIT.n(i5)) {
                        i5 &= ~EnumC3026g3.u;
                    }
                    spliterator = abstractC3002c2.T0(abstractC3002c, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~EnumC3026g3.t) & i5;
                        i3 = EnumC3026g3.s;
                    } else {
                        i2 = (~EnumC3026g3.s) & i5;
                        i3 = EnumC3026g3.t;
                    }
                    i5 = i3 | i2;
                    i4 = 0;
                }
                abstractC3002c2.l = i4;
                abstractC3002c2.m = EnumC3026g3.i(i5, abstractC3002c.m);
                i4++;
                AbstractC3002c abstractC3002c3 = abstractC3002c2;
                abstractC3002c2 = abstractC3002c2.k;
                abstractC3002c = abstractC3002c3;
            }
        }
        if (i != 0) {
            this.m = EnumC3026g3.i(i, this.m);
        }
        return spliterator;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final InterfaceC3079r2 H0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        f0(spliterator, I0((InterfaceC3079r2) Objects.requireNonNull(interfaceC3079r2)));
        return interfaceC3079r2;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final InterfaceC3079r2 I0(InterfaceC3079r2 interfaceC3079r2) {
        Objects.requireNonNull(interfaceC3079r2);
        AbstractC3002c abstractC3002c = this;
        while (abstractC3002c.l > 0) {
            AbstractC3002c abstractC3002c2 = abstractC3002c.i;
            interfaceC3079r2 = abstractC3002c.V0(abstractC3002c2.m, interfaceC3079r2);
            abstractC3002c = abstractC3002c2;
        }
        return interfaceC3079r2;
    }

    final I0 J0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.h.r) {
            return M0(this, spliterator, z, intFunction);
        }
        D0 C0 = C0(k0(spliterator), intFunction);
        H0(spliterator, C0);
        return C0.build();
    }

    final Object K0(P3 p3) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        return this.h.r ? p3.k(this, W0(p3.o())) : p3.y(this, W0(p3.o()));
    }

    final I0 L0(IntFunction intFunction) {
        AbstractC3002c abstractC3002c;
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        if (!this.h.r || (abstractC3002c = this.i) == null || !U0()) {
            return J0(W0(0), true, intFunction);
        }
        this.l = 0;
        return S0(abstractC3002c.W0(0), abstractC3002c, intFunction);
    }

    abstract I0 M0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z, IntFunction intFunction);

    abstract boolean N0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2);

    abstract EnumC3031h3 O0();

    final EnumC3031h3 P0() {
        AbstractC3002c abstractC3002c = this;
        while (abstractC3002c.l > 0) {
            abstractC3002c = abstractC3002c.i;
        }
        return abstractC3002c.O0();
    }

    final boolean Q0() {
        return EnumC3026g3.ORDERED.n(this.m);
    }

    final /* synthetic */ Spliterator R0() {
        return W0(0);
    }

    I0 S0(Spliterator spliterator, AbstractC3002c abstractC3002c, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    Spliterator T0(AbstractC3002c abstractC3002c, Spliterator spliterator) {
        return S0(spliterator, abstractC3002c, new C2997b(0)).spliterator();
    }

    abstract boolean U0();

    abstract InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2);

    final Spliterator X0() {
        AbstractC3002c abstractC3002c = this.h;
        if (this != abstractC3002c) {
            throw new IllegalStateException();
        }
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        Spliterator spliterator = abstractC3002c.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC3002c.n = null;
        return spliterator;
    }

    abstract Spliterator Y0(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z);

    final Spliterator Z0(Spliterator spliterator) {
        return this.l == 0 ? spliterator : Y0(this, new C2992a(0, spliterator), this.h.r);
    }

    @Override // j$.util.stream.InterfaceC3032i, java.lang.AutoCloseable
    public final void close() {
        this.o = true;
        this.n = null;
        AbstractC3002c abstractC3002c = this.h;
        Runnable runnable = abstractC3002c.q;
        if (runnable != null) {
            abstractC3002c.q = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.AbstractC3117z0
    final void f0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        Objects.requireNonNull(interfaceC3079r2);
        if (EnumC3026g3.SHORT_CIRCUIT.n(this.m)) {
            g0(spliterator, interfaceC3079r2);
            return;
        }
        interfaceC3079r2.c(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(interfaceC3079r2);
        interfaceC3079r2.end();
    }

    @Override // j$.util.stream.AbstractC3117z0
    final boolean g0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        AbstractC3002c abstractC3002c = this;
        while (abstractC3002c.l > 0) {
            abstractC3002c = abstractC3002c.i;
        }
        interfaceC3079r2.c(spliterator.getExactSizeIfKnown());
        boolean N0 = abstractC3002c.N0(spliterator, interfaceC3079r2);
        interfaceC3079r2.end();
        return N0;
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final boolean isParallel() {
        return this.h.r;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final long k0(Spliterator spliterator) {
        if (EnumC3026g3.SIZED.n(this.m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final InterfaceC3032i onClose(Runnable runnable) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC3002c abstractC3002c = this.h;
        Runnable runnable2 = abstractC3002c.q;
        if (runnable2 != null) {
            runnable = new O3(runnable2, runnable);
        }
        abstractC3002c.q = runnable;
        return this;
    }

    public final InterfaceC3032i parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final int r0() {
        return this.m;
    }

    public final InterfaceC3032i sequential() {
        this.h.r = false;
        return this;
    }

    public Spliterator spliterator() {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        int i = 1;
        this.o = true;
        AbstractC3002c abstractC3002c = this.h;
        if (this != abstractC3002c) {
            return Y0(this, new C2992a(i, this), abstractC3002c.r);
        }
        Spliterator spliterator = abstractC3002c.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC3002c.n = null;
        return spliterator;
    }
}
