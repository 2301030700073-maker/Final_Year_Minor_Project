package kotlin.reflect.jvm.internal;

import j$.util.concurrent.ConcurrentHashMap;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.CacheEntry;
import kotlinx.serialization.internal.SerializerCache;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConcurrentHashMapCache implements SerializerCache {
    public final ConcurrentHashMap cache;
    public final Function1 compute;

    public ConcurrentHashMapCache(Function1 function1, int i) {
        switch (i) {
            case 1:
                this.compute = function1;
                this.cache = new ConcurrentHashMap();
                break;
            default:
                this.compute = function1;
                this.cache = new ConcurrentHashMap();
                break;
        }
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer get(KClass kClass) {
        Object putIfAbsent;
        Class javaClass = UnsignedKt.getJavaClass(kClass);
        ConcurrentHashMap concurrentHashMap = this.cache;
        Object obj = concurrentHashMap.get(javaClass);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (obj = new CacheEntry((KSerializer) this.compute.invoke(kClass))))) != null) {
            obj = putIfAbsent;
        }
        return ((CacheEntry) obj).serializer;
    }
}
