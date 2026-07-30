package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class F1 implements U1, InterfaceC3065o2 {
    private boolean a;
    private double b;
    final /* synthetic */ DoubleBinaryOperator c;

    F1(DoubleBinaryOperator doubleBinaryOperator) {
        this.c = doubleBinaryOperator;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        if (this.a) {
            this.a = false;
        } else {
            d = ((O0) this.c).a(this.b, d);
        }
        this.b = d;
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
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        m((Double) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a = true;
        this.b = 0.0d;
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
        return this.a ? j$.util.A.a() : j$.util.A.d(this.b);
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        F1 f1 = (F1) u1;
        if (f1.a) {
            return;
        }
        accept(f1.b);
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        AbstractC3117z0.A(this, d);
    }
}
