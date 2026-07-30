package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.m2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC3055m2 implements InterfaceC3075q2 {
    protected final InterfaceC3079r2 a;

    public AbstractC3055m2(InterfaceC3079r2 interfaceC3079r2) {
        this.a = (InterfaceC3079r2) Objects.requireNonNull(interfaceC3079r2);
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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        l((Long) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public boolean e() {
        return this.a.e();
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public void end() {
        this.a.end();
    }

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }
}
