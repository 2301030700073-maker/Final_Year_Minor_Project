package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.o1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C3064o1 implements G0 {
    final long[] a;
    int b;

    C3064o1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.a = new long[(int) j];
        this.b = 0;
    }

    C3064o1(long[] jArr) {
        this.a = jArr;
        this.b = jArr.length;
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
        long[] jArr = this.a;
        int length = jArr.length;
        int i = this.b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.H0
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.a, 0, (long[]) obj, i, i2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3117z0.O(this, consumer);
    }

    @Override // j$.util.stream.H0
    public final void g(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            longConsumer.accept(this.a[i]);
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
    public final /* synthetic */ void j(Long[] lArr, int i) {
        AbstractC3117z0.L(this, lArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ G0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.R(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.l(this.a, 0, this.b);
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final j$.util.e0 spliterator() {
        return Spliterators.l(this.a, 0, this.b);
    }

    public String toString() {
        long[] jArr = this.a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.b), Arrays.toString(jArr));
    }
}
