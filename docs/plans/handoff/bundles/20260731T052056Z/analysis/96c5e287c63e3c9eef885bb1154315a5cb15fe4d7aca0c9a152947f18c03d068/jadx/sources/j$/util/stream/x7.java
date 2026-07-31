package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class x7 extends y7 implements j$.util.x0, LongConsumer {
    public long e;

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.e = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.time.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.b8
    public final Spliterator b(Spliterator spliterator) {
        return new x7((j$.util.x0) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.time.a.k(this, consumer);
    }

    @Override // j$.util.stream.y7
    public final void g(Object obj) {
        ((LongConsumer) obj).accept(this.e);
    }

    @Override // j$.util.stream.y7
    public final f7 j() {
        return new e7();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.time.a.B(this, consumer);
    }
}
