package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class R0 extends U0 implements E0 {
    R0(E0 e0, E0 e02) {
        super(e0, e02);
    }

    @Override // j$.util.stream.I0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Double[] dArr, int i) {
        AbstractC3117z0.J(this, dArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ E0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.P(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.M(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C3034i1(this);
    }

    @Override // j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return new C3034i1(this);
    }
}
