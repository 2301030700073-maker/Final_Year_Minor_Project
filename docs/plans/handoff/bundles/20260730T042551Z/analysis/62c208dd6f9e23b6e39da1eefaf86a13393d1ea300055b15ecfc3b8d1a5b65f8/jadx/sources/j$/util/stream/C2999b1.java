package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.b1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2999b1 extends AbstractC3009d1 implements G0 {
    C2999b1() {
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
        long[] jArr;
        jArr = AbstractC3117z0.f;
        return jArr;
    }

    @Override // j$.util.stream.I0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Long[] lArr, int i) {
        AbstractC3117z0.L(this, lArr, i);
    }

    @Override // j$.util.stream.AbstractC3009d1, j$.util.stream.I0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ G0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.R(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.O(this, consumer);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.d();
    }

    @Override // j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return Spliterators.d();
    }
}
