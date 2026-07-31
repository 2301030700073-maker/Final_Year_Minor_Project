package kotlin.reflect.jvm.internal;

import j$.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CachesKt {
    public static final ConcurrentHashMapCache K_CLASS_CACHE;
    public static final ConcurrentHashMapCache K_PACKAGE_CACHE;

    static {
        CachesKt$K_CLASS_CACHE$1 cachesKt$K_CLASS_CACHE$1 = CachesKt$K_CLASS_CACHE$1.INSTANCE;
        int i = CacheByClassKt.$r8$clinit;
        K_CLASS_CACHE = new ConcurrentHashMapCache(cachesKt$K_CLASS_CACHE$1, 0);
        K_PACKAGE_CACHE = new ConcurrentHashMapCache(CachesKt$K_CLASS_CACHE$1.INSTANCE$1, 0);
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
