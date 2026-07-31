package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1 implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((LockBasedStorageManager.KeyWithComputation) obj).computation.invoke();
    }
}
