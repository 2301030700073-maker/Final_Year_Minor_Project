package kotlinx.serialization;

import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.ConcurrentHashMapCache;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.internal.CachingKt;
import kotlinx.serialization.internal.ClassValueCache;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.SerializerCache;
import okhttp3.FormBody;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SerializersCacheKt {
    public static final ParametrizedSerializerCache PARAMETRIZED_SERIALIZERS_CACHE;
    public static final ParametrizedSerializerCache PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE;
    public static final SerializerCache SERIALIZERS_CACHE;
    public static final SerializerCache SERIALIZERS_CACHE_NULLABLE;

    static {
        ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3 = new ZipFilesKt$$ExternalSyntheticLambda3(1);
        boolean z = CachingKt.useClassValue;
        SERIALIZERS_CACHE = z ? new ClassValueCache(zipFilesKt$$ExternalSyntheticLambda3) : new ConcurrentHashMapCache(zipFilesKt$$ExternalSyntheticLambda3, 1);
        ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda32 = new ZipFilesKt$$ExternalSyntheticLambda3(2);
        SERIALIZERS_CACHE_NULLABLE = z ? new ClassValueCache(zipFilesKt$$ExternalSyntheticLambda32) : new ConcurrentHashMapCache(zipFilesKt$$ExternalSyntheticLambda32, 1);
        CoroutineContextKt$$ExternalSyntheticLambda0 coroutineContextKt$$ExternalSyntheticLambda0 = new CoroutineContextKt$$ExternalSyntheticLambda0(8);
        PARAMETRIZED_SERIALIZERS_CACHE = z ? new ClassValueCache(coroutineContextKt$$ExternalSyntheticLambda0) : new FormBody.Builder((Function2) coroutineContextKt$$ExternalSyntheticLambda0);
        CoroutineContextKt$$ExternalSyntheticLambda0 coroutineContextKt$$ExternalSyntheticLambda02 = new CoroutineContextKt$$ExternalSyntheticLambda0(9);
        PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE = z ? new ClassValueCache(coroutineContextKt$$ExternalSyntheticLambda02) : new FormBody.Builder((Function2) coroutineContextKt$$ExternalSyntheticLambda02);
    }
}
