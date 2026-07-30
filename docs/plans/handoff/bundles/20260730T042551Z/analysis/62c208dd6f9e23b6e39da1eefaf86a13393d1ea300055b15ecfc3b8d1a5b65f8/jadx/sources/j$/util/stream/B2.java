package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class B2 extends AbstractC3007d {
    private final AbstractC3002c j;
    private final IntFunction k;
    private final long l;
    private final long m;
    private long n;
    private volatile boolean o;

    B2(B2 b2, Spliterator spliterator) {
        super(b2, spliterator);
        this.j = b2.j;
        this.k = b2.k;
        this.l = b2.l;
        this.m = b2.m;
    }

    B2(AbstractC3002c abstractC3002c, AbstractC3002c abstractC3002c2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC3002c2, spliterator);
        this.j = abstractC3002c;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    private long l(long j) {
        if (this.o) {
            return this.n;
        }
        B2 b2 = (B2) this.d;
        B2 b22 = (B2) this.e;
        if (b2 == null || b22 == null) {
            return this.n;
        }
        long l = b2.l(j);
        return l >= j ? l : l + b22.l(j);
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final Object a() {
        if (e()) {
            D0 C0 = this.j.C0(EnumC3026g3.SIZED.r(this.j.j) ? this.j.k0(this.b) : -1L, this.k);
            InterfaceC3079r2 V0 = this.j.V0(this.a.r0(), C0);
            AbstractC3117z0 abstractC3117z0 = this.a;
            abstractC3117z0.g0(this.b, abstractC3117z0.I0(V0));
            return C0.build();
        }
        D0 C02 = this.j.C0(-1L, this.k);
        if (this.l == 0) {
            InterfaceC3079r2 V02 = this.j.V0(this.a.r0(), C02);
            AbstractC3117z0 abstractC3117z02 = this.a;
            abstractC3117z02.g0(this.b, abstractC3117z02.I0(V02));
        } else {
            this.a.H0(this.b, C02);
        }
        I0 build = C02.build();
        this.n = build.count();
        this.o = true;
        this.b = null;
        return build;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        return new B2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC3007d
    protected final void i() {
        this.i = true;
        if (this.o) {
            g(k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC3007d
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final AbstractC3009d1 k() {
        return AbstractC3117z0.j0(this.j.O0());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0067  */
    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.B2.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
