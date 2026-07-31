package retrofit2;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInFactories$Java8 extends Reflection {
    @Override // retrofit2.Reflection
    public final List createDefaultCallAdapterFactories(Executor executor) {
        return Arrays.asList(new CompletableFutureCallAdapterFactory(), new DefaultCallAdapterFactory(executor));
    }

    @Override // retrofit2.Reflection
    public final List createDefaultConverterFactories() {
        return Collections.singletonList(new BuiltInConverters(1));
    }
}
