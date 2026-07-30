package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public interface Y extends e0 {
    @Override // j$.util.Spliterator
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(IntConsumer intConsumer);

    @Override // j$.util.Spliterator
    boolean tryAdvance(Consumer consumer);

    boolean tryAdvance(IntConsumer intConsumer);

    @Override // j$.util.e0, j$.util.Spliterator
    Y trySplit();
}
