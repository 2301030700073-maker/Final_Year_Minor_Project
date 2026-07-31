package j$.util.stream;

import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class i0 extends k0 implements n5 {
    public static final f0 c;
    public static final f0 d;

    static {
        e7 e7Var = e7.LONG_VALUE;
        r rVar = new r(6);
        r rVar2 = new r(7);
        j$.util.c0 c0Var = j$.util.c0.c;
        c = new f0(true, e7Var, c0Var, rVar, rVar2);
        d = new f0(false, e7Var, c0Var, new r(6), new r(7));
    }

    @Override // j$.util.stream.k0, j$.util.stream.o5
    public final void accept(long j) {
        s(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.a0.a(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.c0(((Long) this.b).longValue());
        }
        return null;
    }
}
