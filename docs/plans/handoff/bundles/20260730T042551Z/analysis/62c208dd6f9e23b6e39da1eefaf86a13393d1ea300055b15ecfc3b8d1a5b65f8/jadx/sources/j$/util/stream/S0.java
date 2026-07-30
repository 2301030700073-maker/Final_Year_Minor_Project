package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class S0 extends U0 implements F0 {
    S0(F0 f0, F0 f02) {
        super(f0, f02);
    }

    @Override // j$.util.stream.I0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Integer[] numArr, int i) {
        AbstractC3117z0.K(this, numArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ F0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.Q(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.N(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C3039j1(this);
    }

    @Override // j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return new C3039j1(this);
    }
}
