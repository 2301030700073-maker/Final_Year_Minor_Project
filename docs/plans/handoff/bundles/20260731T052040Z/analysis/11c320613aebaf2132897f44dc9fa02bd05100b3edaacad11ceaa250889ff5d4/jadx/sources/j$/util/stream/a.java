package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class a implements BaseStream {
    public final a a;
    public final a b;
    public final int c;
    public final a d;
    public int e;
    public int f;
    public Spliterator g;
    public boolean h;
    public final boolean i;
    public Runnable j;
    public boolean k;

    public a(a aVar, int i) {
        if (aVar.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        aVar.h = true;
        aVar.d = this;
        this.b = aVar;
        this.c = d7.h & i;
        this.f = d7.k(i, aVar.f);
        a aVar2 = aVar.a;
        this.a = aVar2;
        if (I()) {
            aVar2.i = true;
        }
        this.e = aVar.e + 1;
    }

    public abstract boolean C(Spliterator spliterator, o5 o5Var);

    public abstract e7 E();

    public abstract y1 F(long j, IntFunction intFunction);

    public g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    public Spliterator H(a aVar, Spliterator spliterator) {
        return G(aVar, spliterator, new j$.desugar.sun.nio.fs.m(16)).spliterator();
    }

    public abstract boolean I();

    public abstract o5 J(int i, o5 o5Var);

    public final Spliterator K(int i) {
        int i2;
        int i3;
        a aVar = this.a;
        Spliterator spliterator = aVar.g;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        aVar.g = null;
        if (aVar.k && aVar.i) {
            a aVar2 = aVar.d;
            int i4 = 1;
            while (aVar != this) {
                int i5 = aVar2.c;
                if (aVar2.I()) {
                    if (d7.SHORT_CIRCUIT.u(i5)) {
                        i5 &= ~d7.u;
                    }
                    spliterator = aVar2.H(aVar, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~d7.t) & i5;
                        i3 = d7.s;
                    } else {
                        i2 = (~d7.s) & i5;
                        i3 = d7.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                int i6 = i4 + 1;
                aVar2.e = i4;
                aVar2.f = d7.k(i5, aVar.f);
                a aVar3 = aVar2;
                aVar2 = aVar2.d;
                aVar = aVar3;
                i4 = i6;
            }
        }
        if (i != 0) {
            this.f = d7.k(i, this.f);
        }
        return spliterator;
    }

    public final Spliterator L() {
        a aVar = this.a;
        if (this != aVar) {
            throw new IllegalStateException();
        }
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        Spliterator spliterator = aVar.g;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        aVar.g = null;
        return spliterator;
    }

    public abstract Spliterator M(a aVar, Supplier supplier, boolean z);

    public final o5 N(Spliterator spliterator, o5 o5Var) {
        j(spliterator, O((o5) Objects.requireNonNull(o5Var)));
        return o5Var;
    }

    public final o5 O(o5 o5Var) {
        Objects.requireNonNull(o5Var);
        while (this.e > 0) {
            o5Var = this.J(this.b.f, o5Var);
            this = this.b;
        }
        return o5Var;
    }

    public final Spliterator P(Spliterator spliterator) {
        return this.e == 0 ? spliterator : M(this, new j$.desugar.sun.nio.fs.g(6, spliterator), this.a.k);
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.h = true;
        this.g = null;
        a aVar = this.a;
        Runnable runnable = aVar.j;
        if (runnable != null) {
            aVar.j = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.a.k;
    }

    public final void j(Spliterator spliterator, o5 o5Var) {
        Objects.requireNonNull(o5Var);
        if (d7.SHORT_CIRCUIT.u(this.f)) {
            l(spliterator, o5Var);
            return;
        }
        o5Var.c(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(o5Var);
        o5Var.end();
    }

    public final boolean l(Spliterator spliterator, o5 o5Var) {
        while (this.e > 0) {
            this = this.b;
        }
        o5Var.c(spliterator.getExactSizeIfKnown());
        boolean C = this.C(spliterator, o5Var);
        o5Var.end();
        return C;
    }

    public final g2 m(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.a.k) {
            return t(this, spliterator, z, intFunction);
        }
        y1 F = F(v(spliterator), intFunction);
        N(spliterator, F);
        return F.build();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        a aVar = this.a;
        Runnable runnable2 = aVar.j;
        if (runnable2 != null) {
            runnable = new i8(runnable2, runnable);
        }
        aVar.j = runnable;
        return this;
    }

    public final Object p(l8 l8Var) {
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        return this.a.k ? l8Var.b(this, K(l8Var.f())) : l8Var.a(this, K(l8Var.f()));
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream parallel() {
        this.a.k = true;
        return this;
    }

    public final g2 r(IntFunction intFunction) {
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        if (!this.a.k || this.b == null || !I()) {
            return m(K(0), true, intFunction);
        }
        this.e = 0;
        a aVar = this.b;
        return G(aVar, aVar.K(0), intFunction);
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream sequential() {
        this.a.k = false;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public Spliterator spliterator() {
        if (this.h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.h = true;
        a aVar = this.a;
        if (this != aVar) {
            return M(this, new j$.desugar.sun.nio.fs.g(5, this), aVar.k);
        }
        Spliterator spliterator = aVar.g;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        aVar.g = null;
        return spliterator;
    }

    public abstract g2 t(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction);

    public final long v(Spliterator spliterator) {
        if (d7.SIZED.u(this.f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    public a(Spliterator spliterator, int i, boolean z) {
        this.b = null;
        this.g = spliterator;
        this.a = this;
        int i2 = d7.g & i;
        this.c = i2;
        this.f = (~(i2 << 1)) & d7.l;
        this.e = 0;
        this.k = z;
    }
}
