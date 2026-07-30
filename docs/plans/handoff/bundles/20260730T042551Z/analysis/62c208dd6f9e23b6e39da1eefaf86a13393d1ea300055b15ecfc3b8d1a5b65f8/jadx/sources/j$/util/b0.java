package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public interface b0 extends e0 {
    @Override // j$.util.Spliterator
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(LongConsumer longConsumer);

    @Override // j$.util.Spliterator
    boolean tryAdvance(Consumer consumer);

    boolean tryAdvance(LongConsumer longConsumer);

    @Override // j$.util.e0, j$.util.Spliterator
    b0 trySplit();
}
