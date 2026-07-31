package j$.util.stream;

import j$.util.OptionalInt;
import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class h0 extends k0 implements m5 {
    public static final f0 c;
    public static final f0 d;

    static {
        e7 e7Var = e7.INT_VALUE;
        r rVar = new r(4);
        r rVar2 = new r(5);
        OptionalInt optionalInt = OptionalInt.c;
        c = new f0(true, e7Var, optionalInt, rVar, rVar2);
        d = new f0(false, e7Var, optionalInt, new r(4), new r(5));
    }

    @Override // j$.util.stream.k0, j$.util.stream.o5
    public final void accept(int i) {
        s(Integer.valueOf(i));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new OptionalInt(((Integer) this.b).intValue());
        }
        return null;
    }
}
