package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class Q1 implements U1, InterfaceC3070p2 {
    private boolean a;
    private int b;
    final /* synthetic */ IntBinaryOperator c;

    Q1(IntBinaryOperator intBinaryOperator) {
        this.c = intBinaryOperator;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        if (this.a) {
            this.a = false;
        } else {
            i = ((O0) this.c).b(this.b, i);
        }
        this.b = i;
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
        this.a = true;
        this.b = 0;
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

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.a ? j$.util.B.a() : j$.util.B.d(this.b);
    }

    @Override // j$.util.stream.U1
    public final void h(U1 u1) {
        Q1 q1 = (Q1) u1;
        if (q1.a) {
            return;
        }
        accept(q1.b);
    }
}
