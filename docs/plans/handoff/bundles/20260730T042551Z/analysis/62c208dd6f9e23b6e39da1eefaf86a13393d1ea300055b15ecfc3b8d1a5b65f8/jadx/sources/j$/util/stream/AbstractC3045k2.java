package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.k2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC3045k2 implements InterfaceC3065o2 {
    protected final InterfaceC3079r2 a;

    public AbstractC3045k2(InterfaceC3079r2 interfaceC3079r2) {
        this.a = (InterfaceC3079r2) Objects.requireNonNull(interfaceC3079r2);
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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
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
    public boolean e() {
        return this.a.e();
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public void end() {
        this.a.end();
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        AbstractC3117z0.A(this, d);
    }
}
