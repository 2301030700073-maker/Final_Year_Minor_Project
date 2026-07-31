package j$.util.stream;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class p1 extends s1 implements m5 {
    public final /* synthetic */ t1 c;
    public final /* synthetic */ IntPredicate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(t1 t1Var, IntPredicate intPredicate) {
        super(t1Var);
        this.c = t1Var;
        this.d = intPredicate;
    }

    @Override // j$.util.stream.s1, j$.util.stream.o5
    public final void accept(int i) {
        if (this.a) {
            return;
        }
        boolean test = this.d.test(i);
        t1 t1Var = this.c;
        if (test == t1Var.a) {
            this.a = true;
            this.b = t1Var.b;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void d(Integer num) {
        w3.g(this, num);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void s(Object obj) {
        d((Integer) obj);
    }
}
