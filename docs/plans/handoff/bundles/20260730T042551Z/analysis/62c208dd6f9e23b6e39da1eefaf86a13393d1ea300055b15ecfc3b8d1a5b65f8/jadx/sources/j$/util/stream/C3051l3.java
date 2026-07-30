package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.l3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3051l3 extends AbstractC3056m3 implements LongConsumer {
    final long[] c;

    C3051l3(int i) {
        this.c = new long[i];
    }

    @Override // j$.util.stream.AbstractC3056m3
    public final void a(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }
}
