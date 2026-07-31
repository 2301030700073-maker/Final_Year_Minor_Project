package j$.util.stream;

import java.util.function.IntConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class g0 extends j0 implements j5 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.INT_VALUE;
        o oVar = new o(14);
        o oVar2 = new o(15);
        j$.util.a0 a0Var = j$.util.a0.c;
        c = new e0(true, a7Var, a0Var, oVar, oVar2);
        d = new e0(false, a7Var, a0Var, new o(14), new o(15));
    }

    @Override // j$.util.stream.j0, j$.util.stream.l5
    public final void accept(int i) {
        r(Integer.valueOf(i));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.c.b(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.a0(((Integer) this.b).intValue());
        }
        return null;
    }
}
