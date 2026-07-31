package j$.util.stream;

import j$.util.function.DoubleConsumer$CC;
import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class g0 extends k0 implements l5 {
    public static final f0 c;
    public static final f0 d;

    static {
        e7 e7Var = e7.DOUBLE_VALUE;
        r rVar = new r(2);
        r rVar2 = new r(3);
        j$.util.b0 b0Var = j$.util.b0.c;
        c = new f0(true, e7Var, b0Var, rVar, rVar2);
        d = new f0(false, e7Var, b0Var, new r(2), new r(3));
    }

    @Override // j$.util.stream.k0, j$.util.stream.o5
    public final void accept(double d2) {
        s(Double.valueOf(d2));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.b0(((Double) this.b).doubleValue());
        }
        return null;
    }
}
