package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.f1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C3019f1 implements F0 {
    final int[] a;
    int b;

    C3019f1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.a = new int[(int) j];
        this.b = 0;
    }

    C3019f1(int[] iArr) {
        this.a = iArr;
        this.b = iArr.length;
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final H0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.H0
    public final Object b() {
        int[] iArr = this.a;
        int length = iArr.length;
        int i = this.b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.H0
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.a, 0, (int[]) obj, i, i2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.N(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            intConsumer.accept(this.a[i]);
        }
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] k(IntFunction intFunction) {
        return AbstractC3117z0.I(this, intFunction);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int n() {
        return 0;
    }

    @Override // j$.util.stream.I0
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Integer[] numArr, int i) {
        AbstractC3117z0.K(this, numArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ F0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.Q(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.k(this.a, 0, this.b);
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return Spliterators.k(this.a, 0, this.b);
    }

    public String toString() {
        int[] iArr = this.a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.b), Arrays.toString(iArr));
    }
}
