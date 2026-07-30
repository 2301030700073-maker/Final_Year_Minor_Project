package j$.util.stream;

import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class K1 implements U1 {
    private boolean a;
    private Object b;
    final /* synthetic */ BinaryOperator c;

    K1(BinaryOperator binaryOperator) {
        this.c = binaryOperator;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(int i) {
        AbstractC3117z0.G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        if (this.a) {
            this.a = false;
        } else {
            obj = this.c.apply(this.b, obj);
        }
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a = true;
        this.b = null;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.a ? Optional.empty() : Optional.of(this.b);
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        K1 k1 = (K1) u1;
        if (k1.a) {
            return;
        }
        m(k1.b);
    }
}
