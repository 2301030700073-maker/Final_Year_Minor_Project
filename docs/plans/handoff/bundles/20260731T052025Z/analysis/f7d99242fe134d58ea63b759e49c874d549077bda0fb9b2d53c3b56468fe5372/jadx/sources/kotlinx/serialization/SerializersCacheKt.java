package kotlinx.serialization;

import com.google.zxing.BinaryBitmap;
import kotlinx.serialization.internal.CachingKt;
import kotlinx.serialization.internal.ClassValueCache;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SerializersCacheKt {
    public static final ParametrizedSerializerCache PARAMETRIZED_SERIALIZERS_CACHE;
    public static final ParametrizedSerializerCache PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE;
    public static final SerializerCache SERIALIZERS_CACHE;
    public static final SerializerCache SERIALIZERS_CACHE_NULLABLE;

    static {
        JsonObject$$ExternalSyntheticLambda0 jsonObject$$ExternalSyntheticLambda0 = new JsonObject$$ExternalSyntheticLambda0(9);
        boolean z = CachingKt.useClassValue;
        SERIALIZERS_CACHE = z ? new ClassValueCache(jsonObject$$ExternalSyntheticLambda0) : new BinaryBitmap(jsonObject$$ExternalSyntheticLambda0);
        JsonObject$$ExternalSyntheticLambda0 jsonObject$$ExternalSyntheticLambda02 = new JsonObject$$ExternalSyntheticLambda0(10);
        SERIALIZERS_CACHE_NULLABLE = z ? new ClassValueCache(jsonObject$$ExternalSyntheticLambda02) : new BinaryBitmap(jsonObject$$ExternalSyntheticLambda02);
        SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda2 = new SerializersCacheKt$$ExternalSyntheticLambda2(0);
        PARAMETRIZED_SERIALIZERS_CACHE = z ? new ClassValueCache(serializersCacheKt$$ExternalSyntheticLambda2) : new BinaryBitmap(serializersCacheKt$$ExternalSyntheticLambda2);
        SerializersCacheKt$$ExternalSyntheticLambda2 serializersCacheKt$$ExternalSyntheticLambda22 = new SerializersCacheKt$$ExternalSyntheticLambda2(4);
        PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE = z ? new ClassValueCache(serializersCacheKt$$ExternalSyntheticLambda22) : new BinaryBitmap(serializersCacheKt$$ExternalSyntheticLambda22);
    }
}
