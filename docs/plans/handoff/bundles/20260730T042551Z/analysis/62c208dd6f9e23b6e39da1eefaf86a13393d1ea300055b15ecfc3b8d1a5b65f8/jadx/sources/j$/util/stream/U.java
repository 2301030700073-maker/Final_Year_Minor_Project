package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
abstract class U implements P3, Q3 {
    private final boolean a;

    protected U(boolean z) {
        this.a = z;
    }

    public final void a(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        (this.a ? new V(abstractC3117z0, spliterator, this) : new W(abstractC3117z0, spliterator, abstractC3117z0.I0(this))).invoke();
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
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.P3
    public final int o() {
        if (this.a) {
            return 0;
        }
        return EnumC3026g3.r;
    }
}
