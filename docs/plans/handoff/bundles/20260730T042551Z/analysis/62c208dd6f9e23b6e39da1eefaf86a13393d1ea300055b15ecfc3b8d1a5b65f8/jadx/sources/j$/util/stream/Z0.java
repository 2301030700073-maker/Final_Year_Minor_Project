package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class Z0 extends AbstractC3009d1 implements E0 {
    Z0() {
    }

    @Override // j$.util.stream.AbstractC3009d1, j$.util.stream.I0
    public final H0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.AbstractC3009d1, j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.H0
    public final Object b() {
        double[] dArr;
        dArr = AbstractC3117z0.g;
        return dArr;
    }

    @Override // j$.util.stream.I0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Double[] dArr, int i) {
        AbstractC3117z0.J(this, dArr, i);
    }

    @Override // j$.util.stream.AbstractC3009d1, j$.util.stream.I0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ E0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.P(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.M(this, consumer);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.b();
    }

    @Override // j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return Spliterators.b();
    }
}
