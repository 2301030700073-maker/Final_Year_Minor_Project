package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.a1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2994a1 extends AbstractC3009d1 implements F0 {
    C2994a1() {
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
        int[] iArr;
        iArr = AbstractC3117z0.e;
        return iArr;
    }

    @Override // j$.util.stream.I0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Integer[] numArr, int i) {
        AbstractC3117z0.K(this, numArr, i);
    }

    @Override // j$.util.stream.AbstractC3009d1, j$.util.stream.I0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ F0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.Q(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.N(this, consumer);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.c();
    }

    @Override // j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return Spliterators.c();
    }
}
