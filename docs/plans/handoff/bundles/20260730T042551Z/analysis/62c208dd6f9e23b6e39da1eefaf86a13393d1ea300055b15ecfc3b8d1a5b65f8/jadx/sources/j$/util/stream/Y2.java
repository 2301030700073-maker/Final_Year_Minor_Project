package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
class Y2 extends AbstractC2996a3 implements LongConsumer {
    Y2() {
    }

    Y2(int i) {
        super(i);
    }

    @Override // java.util.function.LongConsumer
    public void accept(long j) {
        t();
        long[] jArr = (long[]) this.e;
        int i = this.b;
        this.b = i + 1;
        jArr[i] = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // java.lang.Iterable, j$.lang.a
    public final void forEach(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            g((LongConsumer) consumer);
        } else {
            if (S3.a) {
                S3.a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
                throw null;
            }
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.h(spliterator());
    }

    @Override // j$.util.stream.AbstractC2996a3
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final void o(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        LongConsumer longConsumer = (LongConsumer) obj2;
        while (i < i2) {
            longConsumer.accept(jArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final int p(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // j$.util.stream.AbstractC2996a3
    protected final Object[] s() {
        return new long[8][];
    }

    public final String toString() {
        long[] jArr = (long[]) b();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // j$.util.stream.AbstractC2996a3, java.lang.Iterable
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public j$.util.b0 spliterator() {
        return new X2(this, 0, this.c, 0, this.b);
    }
}
