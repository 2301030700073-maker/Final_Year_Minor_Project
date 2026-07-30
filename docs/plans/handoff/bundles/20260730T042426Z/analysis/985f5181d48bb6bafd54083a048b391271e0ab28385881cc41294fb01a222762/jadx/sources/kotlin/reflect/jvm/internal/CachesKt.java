package kotlin.reflect.jvm.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KType;
import kotlin.reflect.full.KClassifiers;

/* compiled from: caches.kt */
/* loaded from: classes2.dex */
public abstract class CachesKt {
    private static final CacheByClass K_CLASS_CACHE = CacheByClassKt.createCache(new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$0
        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            KClassImpl K_CLASS_CACHE$lambda$0;
            K_CLASS_CACHE$lambda$0 = CachesKt.K_CLASS_CACHE$lambda$0((Class) obj);
            return K_CLASS_CACHE$lambda$0;
        }
    });
    private static final CacheByClass K_PACKAGE_CACHE = CacheByClassKt.createCache(new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$1
        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            KPackageImpl K_PACKAGE_CACHE$lambda$1;
            K_PACKAGE_CACHE$lambda$1 = CachesKt.K_PACKAGE_CACHE$lambda$1((Class) obj);
            return K_PACKAGE_CACHE$lambda$1;
        }
    });
    private static final CacheByClass CACHE_FOR_BASE_CLASSIFIERS = CacheByClassKt.createCache(new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$2
        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            KType CACHE_FOR_BASE_CLASSIFIERS$lambda$2;
            CACHE_FOR_BASE_CLASSIFIERS$lambda$2 = CachesKt.CACHE_FOR_BASE_CLASSIFIERS$lambda$2((Class) obj);
            return CACHE_FOR_BASE_CLASSIFIERS$lambda$2;
        }
    });
    private static final CacheByClass CACHE_FOR_NULLABLE_BASE_CLASSIFIERS = CacheByClassKt.createCache(new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$3
        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            KType CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$lambda$3;
            CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$lambda$3 = CachesKt.CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$lambda$3((Class) obj);
            return CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$lambda$3;
        }
    });
    private static final CacheByClass CACHE_FOR_GENERIC_CLASSIFIERS = CacheByClassKt.createCache(new Function1() { // from class: kotlin.reflect.jvm.internal.CachesKt$$Lambda$4
        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            ConcurrentHashMap CACHE_FOR_GENERIC_CLASSIFIERS$lambda$4;
            CACHE_FOR_GENERIC_CLASSIFIERS$lambda$4 = CachesKt.CACHE_FOR_GENERIC_CLASSIFIERS$lambda$4((Class) obj);
            return CACHE_FOR_GENERIC_CLASSIFIERS$lambda$4;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final KClassImpl K_CLASS_CACHE$lambda$0(Class it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new KClassImpl(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KPackageImpl K_PACKAGE_CACHE$lambda$1(Class it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new KPackageImpl(it);
    }

    public static final KClassImpl getOrCreateKotlinClass(Class jClass) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        Object obj = K_CLASS_CACHE.get(jClass);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>");
        return (KClassImpl) obj;
    }

    public static final KDeclarationContainer getOrCreateKotlinPackage(Class jClass) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        return (KDeclarationContainer) K_PACKAGE_CACHE.get(jClass);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KType CACHE_FOR_BASE_CLASSIFIERS$lambda$2(Class it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return KClassifiers.createType(getOrCreateKotlinClass(it), CollectionsKt.emptyList(), false, CollectionsKt.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KType CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$lambda$3(Class it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return KClassifiers.createType(getOrCreateKotlinClass(it), CollectionsKt.emptyList(), true, CollectionsKt.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap CACHE_FOR_GENERIC_CLASSIFIERS$lambda$4(Class it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new ConcurrentHashMap();
    }

    public static final KType getOrCreateKType(Class jClass, List arguments, boolean z) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        if (!arguments.isEmpty()) {
            return getOrCreateKTypeWithTypeArguments(jClass, arguments, z);
        }
        if (z) {
            return (KType) CACHE_FOR_NULLABLE_BASE_CLASSIFIERS.get(jClass);
        }
        return (KType) CACHE_FOR_BASE_CLASSIFIERS.get(jClass);
    }

    private static final KType getOrCreateKTypeWithTypeArguments(Class cls, List list, boolean z) {
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) CACHE_FOR_GENERIC_CLASSIFIERS.get(cls);
        Pair pair = TuplesKt.to(list, Boolean.valueOf(z));
        Object obj = concurrentHashMap.get(pair);
        if (obj == null) {
            KType createType = KClassifiers.createType(getOrCreateKotlinClass(cls), list, z, CollectionsKt.emptyList());
            Object putIfAbsent = concurrentHashMap.putIfAbsent(pair, createType);
            obj = putIfAbsent == null ? createType : putIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(obj, "getOrPut(...)");
        return (KType) obj;
    }
}
