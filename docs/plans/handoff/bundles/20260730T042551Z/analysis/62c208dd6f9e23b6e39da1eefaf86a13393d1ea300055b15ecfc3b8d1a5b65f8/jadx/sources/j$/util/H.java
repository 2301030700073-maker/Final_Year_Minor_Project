package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public interface H extends Q {
    @Override // java.util.Iterator, j$.util.Iterator
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(DoubleConsumer doubleConsumer);

    @Override // java.util.Iterator, j$.util.Iterator
    Double next();

    double nextDouble();
}
