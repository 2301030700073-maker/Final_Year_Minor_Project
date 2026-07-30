package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.a2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC2995a2 extends V1 implements U1 {
    long b;

    AbstractC2995a2() {
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3117z0.G();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.b = 0L;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }
}
