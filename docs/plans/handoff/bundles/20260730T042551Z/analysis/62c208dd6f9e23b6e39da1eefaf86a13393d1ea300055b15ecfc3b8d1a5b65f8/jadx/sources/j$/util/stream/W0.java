package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
class W0 implements E0 {
    final double[] a;
    int b;

    W0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.a = new double[(int) j];
        this.b = 0;
    }

    W0(double[] dArr) {
        this.a = dArr;
        this.b = dArr.length;
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
        double[] dArr = this.a;
        int length = dArr.length;
        int i = this.b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.H0
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.a, 0, (double[]) obj, i, i2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.M(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            doubleConsumer.accept(this.a[i]);
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
    public final /* synthetic */ void j(Double[] dArr, int i) {
        AbstractC3117z0.J(this, dArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ E0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.P(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.j(this.a, 0, this.b);
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return Spliterators.j(this.a, 0, this.b);
    }

    public String toString() {
        double[] dArr = this.a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.b), Arrays.toString(dArr));
    }
}
