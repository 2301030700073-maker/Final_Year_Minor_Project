package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public interface P extends Q {
    @Override // java.util.Iterator, j$.util.Iterator
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(LongConsumer longConsumer);

    @Override // java.util.Iterator, j$.util.Iterator
    Long next();

    long nextLong();
}
