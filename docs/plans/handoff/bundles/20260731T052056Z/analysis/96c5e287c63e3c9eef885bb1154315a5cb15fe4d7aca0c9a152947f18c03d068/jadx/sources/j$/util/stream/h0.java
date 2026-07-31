package j$.util.stream;

import java.util.function.LongConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class h0 extends j0 implements k5 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.LONG_VALUE;
        o oVar = new o(15);
        o oVar2 = new o(16);
        j$.util.a0 a0Var = j$.util.a0.c;
        c = new e0(true, a7Var, a0Var, oVar, oVar2);
        d = new e0(false, a7Var, a0Var, new o(15), new o(16));
    }

    @Override // j$.util.stream.j0, j$.util.stream.l5
    public final void accept(long j) {
        n(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.time.a.d(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.a0(((Long) this.b).longValue());
        }
        return null;
    }
}
