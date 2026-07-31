package kotlinx.serialization.internal;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Function;
import kotlin.Result;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassValueCache implements SerializerCache, ParametrizedSerializerCache {
    public final ClassValueReferences classValue = new ClassValueReferences();
    public final Function compute;

    public ClassValueCache(Function1 function1) {
        this.compute = function1;
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer get(KClass kClass) {
        Object obj = this.classValue.get(UnsignedKt.getJavaClass(kClass));
        obj.getClass();
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        Object obj2 = mutableSoftReference.reference.get();
        if (obj2 == null) {
            synchronized (mutableSoftReference) {
                obj2 = mutableSoftReference.reference.get();
                if (obj2 == null) {
                    obj2 = new CacheEntry((KSerializer) ((Function1) this.compute).invoke(kClass));
                    mutableSoftReference.reference = new SoftReference(obj2);
                }
            }
        }
        return ((CacheEntry) obj2).serializer;
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* renamed from: get-gIAlu-s, reason: not valid java name */
    public Object mo870getgIAlus(KClass kClass, ArrayList arrayList) {
        Object failure;
        Object obj = this.classValue.get(UnsignedKt.getJavaClass(kClass));
        obj.getClass();
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        Object obj2 = mutableSoftReference.reference.get();
        if (obj2 == null) {
            synchronized (mutableSoftReference) {
                obj2 = mutableSoftReference.reference.get();
                if (obj2 == null) {
                    obj2 = new ParametrizedCacheEntry();
                    mutableSoftReference.reference = new SoftReference(obj2);
                }
            }
        }
        ParametrizedCacheEntry parametrizedCacheEntry = (ParametrizedCacheEntry) obj2;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new KTypeWrapper((KType) it.next()));
        }
        ConcurrentHashMap concurrentHashMap = parametrizedCacheEntry.serializers;
        Object obj3 = concurrentHashMap.get(arrayList2);
        if (obj3 == null) {
            try {
                failure = (KSerializer) ((Function2) this.compute).invoke(kClass, arrayList);
            } catch (Throwable th) {
                failure = new Result.Failure(th);
            }
            Result result = new Result(failure);
            Object putIfAbsent = concurrentHashMap.putIfAbsent(arrayList2, result);
            obj3 = putIfAbsent == null ? result : putIfAbsent;
        }
        return ((Result) obj3).value;
    }

    public ClassValueCache(Function2 function2) {
        this.compute = function2;
    }
}
