package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class T0 extends U0 implements G0 {
    T0(G0 g0, G0 g02) {
        super(g0, g02);
    }

    @Override // j$.util.stream.I0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Long[] lArr, int i) {
        AbstractC3117z0.L(this, lArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ G0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.R(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.O(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C3044k1(this);
    }

    @Override // j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return new C3044k1(this);
    }
}
