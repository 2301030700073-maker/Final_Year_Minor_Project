package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public interface V extends e0 {
    @Override // j$.util.Spliterator
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(DoubleConsumer doubleConsumer);

    @Override // j$.util.Spliterator
    boolean tryAdvance(Consumer consumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // j$.util.e0, j$.util.Spliterator
    V trySplit();
}
