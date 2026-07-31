package j$.util.stream;

import java.util.function.LongConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class h0 extends j0 implements k5 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.LONG_VALUE;
        o oVar = new o(16);
        o oVar2 = new o(17);
        j$.util.b0 b0Var = j$.util.b0.c;
        c = new e0(true, a7Var, b0Var, oVar, oVar2);
        d = new e0(false, a7Var, b0Var, new o(16), new o(17));
    }

    @Override // j$.util.stream.j0, j$.util.stream.l5
    public final void accept(long j) {
        r(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.c.c(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.b0(((Long) this.b).longValue());
        }
        return null;
    }
}
