package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
class U2 extends AbstractC2996a3 implements DoubleConsumer {
    U2() {
    }

    U2(int i) {
        super(i);
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d) {
        t();
        double[] dArr = (double[]) this.e;
        int i = this.b;
        this.b = i + 1;
        dArr[i] = d;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // java.lang.Iterable, j$.lang.a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            g((DoubleConsumer) consumer);
        } else {
            if (S3.a) {
                S3.a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.AbstractC2996a3
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final void o(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i < i2) {
            doubleConsumer.accept(dArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final int p(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final Object[] s() {
        return new double[8][];
    }

    public final String toString() {
        double[] dArr = (double[]) b();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // j$.util.stream.AbstractC2996a3, java.lang.Iterable
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public j$.util.V spliterator() {
        return new T2(this, 0, this.c, 0, this.b);
    }
}
