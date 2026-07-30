package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class R1 extends V1 implements U1, InterfaceC3070p2 {
    final /* synthetic */ Supplier b;
    final /* synthetic */ ObjIntConsumer c;
    final /* synthetic */ BinaryOperator d;

    R1(Supplier supplier, ObjIntConsumer objIntConsumer, BinaryOperator binaryOperator) {
        this.b = supplier;
        this.c = objIntConsumer;
        this.d = binaryOperator;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        this.c.accept(this.a, i);
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        d((Integer) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a = this.b.get();
    }

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        AbstractC3117z0.C(this, num);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        this.a = this.d.apply(this.a, ((R1) u1).a);
    }
}
