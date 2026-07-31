package j$.util.stream;

import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class f0 extends j0 implements i5 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.DOUBLE_VALUE;
        o oVar = new o(12);
        o oVar2 = new o(13);
        j$.util.z zVar = j$.util.z.c;
        c = new e0(true, a7Var, zVar, oVar, oVar2);
        d = new e0(false, a7Var, zVar, new o(12), new o(13));
    }

    @Override // j$.util.stream.j0, j$.util.stream.l5
    public final void accept(double d2) {
        r(Double.valueOf(d2));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.util.c.a(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.z(((Double) this.b).doubleValue());
        }
        return null;
    }
}
