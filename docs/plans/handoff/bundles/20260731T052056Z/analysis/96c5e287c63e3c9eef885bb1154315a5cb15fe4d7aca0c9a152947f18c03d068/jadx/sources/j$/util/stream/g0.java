package j$.util.stream;

import java.util.function.IntConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class g0 extends j0 implements j5 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.INT_VALUE;
        o oVar = new o(13);
        o oVar2 = new o(14);
        j$.util.z zVar = j$.util.z.c;
        c = new e0(true, a7Var, zVar, oVar, oVar2);
        d = new e0(false, a7Var, zVar, new o(13), new o(14));
    }

    @Override // j$.util.stream.j0, j$.util.stream.l5
    public final void accept(int i) {
        n(Integer.valueOf(i));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.time.a.c(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.z(((Integer) this.b).intValue());
        }
        return null;
    }
}
