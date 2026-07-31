package j$.util.stream;

import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class f0 extends j0 implements i5 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.DOUBLE_VALUE;
        o oVar = new o(11);
        o oVar2 = new o(12);
        j$.util.y yVar = j$.util.y.c;
        c = new e0(true, a7Var, yVar, oVar, oVar2);
        d = new e0(false, a7Var, yVar, new o(11), new o(12));
    }

    @Override // j$.util.stream.j0, j$.util.stream.l5
    public final void accept(double d2) {
        n(Double.valueOf(d2));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.time.a.b(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.y(((Double) this.b).doubleValue());
        }
        return null;
    }
}
