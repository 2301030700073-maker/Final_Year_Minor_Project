package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class v5 extends b {
    public final a j;
    public final IntFunction k;
    public final long l;
    public final long m;
    public long n;
    public volatile boolean o;

    public v5(v5 v5Var, Spliterator spliterator) {
        super(v5Var, spliterator);
        this.j = v5Var.j;
        this.k = v5Var.k;
        this.l = v5Var.l;
        this.m = v5Var.m;
    }

    @Override // j$.util.stream.d
    public final Object a() {
        if (b()) {
            z6 z6Var = z6.SIZED;
            a aVar = this.j;
            int i = aVar.c;
            int i2 = z6Var.e;
            y1 I = this.j.I((i & i2) == i2 ? aVar.F(this.b) : -1L, this.k);
            l5 M = this.j.M(this.a.f, I);
            a aVar2 = this.a;
            aVar2.A(this.b, aVar2.R(M));
            return I.build();
        }
        y1 I2 = this.j.I(-1L, this.k);
        if (this.l == 0) {
            l5 M2 = this.j.M(this.a.f, I2);
            a aVar3 = this.a;
            aVar3.A(this.b, aVar3.R(M2));
        } else {
            this.a.Q(this.b, I2);
        }
        g2 build = I2.build();
        this.n = build.count();
        this.o = true;
        this.b = null;
        return build;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new v5(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.o) {
            d(v3.G(this.j.H()));
        }
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return v3.G(this.j.H());
    }

    public final long j(long j) {
        if (this.o) {
            return this.n;
        }
        v5 v5Var = (v5) this.d;
        v5 v5Var2 = (v5) this.e;
        if (v5Var == null || v5Var2 == null) {
            return this.n;
        }
        long j2 = v5Var.j(j);
        return j2 >= j ? j2 : v5Var2.j(j) + j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        if (r2 >= r0) goto L49;
     */
    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.v5.onCompletion(java.util.concurrent.CountedCompleter):void");
    }

    public v5(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(aVar2, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }
}
