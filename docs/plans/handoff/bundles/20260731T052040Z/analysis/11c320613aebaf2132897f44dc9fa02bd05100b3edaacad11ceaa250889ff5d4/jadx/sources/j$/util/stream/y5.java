package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class y5 extends b {
    public final a j;
    public final IntFunction k;
    public final long l;
    public final long m;
    public long n;
    public volatile boolean o;

    public y5(y5 y5Var, Spliterator spliterator) {
        super(y5Var, spliterator);
        this.j = y5Var.j;
        this.k = y5Var.k;
        this.l = y5Var.l;
        this.m = y5Var.m;
    }

    @Override // j$.util.stream.d
    public final Object a() {
        if (b()) {
            d7 d7Var = d7.SIZED;
            a aVar = this.j;
            int i = aVar.c;
            int i2 = d7Var.e;
            y1 F = this.j.F((i & i2) == i2 ? aVar.v(this.b) : -1L, this.k);
            o5 J = this.j.J(this.a.f, F);
            a aVar2 = this.a;
            aVar2.l(this.b, aVar2.O(J));
            return F.build();
        }
        y1 F2 = this.j.F(-1L, this.k);
        if (this.l == 0) {
            o5 J2 = this.j.J(this.a.f, F2);
            a aVar3 = this.a;
            aVar3.l(this.b, aVar3.O(J2));
        } else {
            this.a.N(this.b, F2);
        }
        g2 build = F2.build();
        this.n = build.count();
        this.o = true;
        this.b = null;
        return build;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new y5(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.o) {
            d(w3.E(this.j.E()));
        }
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return w3.E(this.j.E());
    }

    public final long j(long j) {
        if (this.o) {
            return this.n;
        }
        y5 y5Var = (y5) this.d;
        y5 y5Var2 = (y5) this.e;
        if (y5Var == null || y5Var2 == null) {
            return this.n;
        }
        long j2 = y5Var.j(j);
        return j2 >= j ? j2 : y5Var2.j(j) + j2;
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
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.y5.onCompletion(java.util.concurrent.CountedCompleter):void");
    }

    public y5(a aVar, a aVar2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(aVar2, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }
}
