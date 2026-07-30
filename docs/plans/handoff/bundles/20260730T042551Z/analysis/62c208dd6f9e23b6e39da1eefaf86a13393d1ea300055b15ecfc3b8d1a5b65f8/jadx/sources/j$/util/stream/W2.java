package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
class W2 extends AbstractC2996a3 implements IntConsumer {
    W2() {
    }

    W2(int i) {
        super(i);
    }

    @Override // java.util.function.IntConsumer
    public void accept(int i) {
        t();
        int[] iArr = (int[]) this.e;
        int i2 = this.b;
        this.b = i2 + 1;
        iArr[i2] = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // java.lang.Iterable, j$.lang.a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            g((IntConsumer) consumer);
        } else {
            if (S3.a) {
                S3.a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
                throw null;
            }
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.g(spliterator());
    }

    @Override // j$.util.stream.AbstractC2996a3
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final void o(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        IntConsumer intConsumer = (IntConsumer) obj2;
        while (i < i2) {
            intConsumer.accept(iArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final int p(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final Object[] s() {
        return new int[8][];
    }

    public final String toString() {
        int[] iArr = (int[]) b();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // j$.util.stream.AbstractC2996a3, java.lang.Iterable
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public j$.util.Y spliterator() {
        return new V2(this, 0, this.c, 0, this.b);
    }
}
