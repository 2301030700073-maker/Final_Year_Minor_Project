package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.l2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC3050l2 implements InterfaceC3070p2 {
    protected final InterfaceC3079r2 a;

    public AbstractC3050l2(InterfaceC3079r2 interfaceC3079r2) {
        this.a = (InterfaceC3079r2) Objects.requireNonNull(interfaceC3079r2);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        d((Integer) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        AbstractC3117z0.C(this, num);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public boolean e() {
        return this.a.e();
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public void end() {
        this.a.end();
    }
}
