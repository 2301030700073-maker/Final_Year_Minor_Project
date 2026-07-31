package org.wikipedia.dataclient.mwapi;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.UserInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UserInfo$Options$$serializer implements GeneratedSerializer {
    public static final UserInfo$Options$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        UserInfo$Options$$serializer userInfo$Options$$serializer = new UserInfo$Options$$serializer();
        INSTANCE = userInfo$Options$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.UserInfo.Options", userInfo$Options$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("watchdefault", true);
        pluginGeneratedSerialDescriptor.addElement("centralnotice-display-campaign-type-fundraising", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        JsonElement jsonElement = null;
        JsonElement jsonElement2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, JsonElementSerializer.INSTANCE, jsonElement);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                jsonElement2 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, JsonElementSerializer.INSTANCE, jsonElement2);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new UserInfo.Options(i, jsonElement, jsonElement2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        UserInfo.Options options = (UserInfo.Options) obj;
        options.getClass();
        JsonElement jsonElement = options.fundraisingOptIn;
        JsonElement jsonElement2 = options.watchDefault;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, JsonElementSerializer.INSTANCE, jsonElement2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, JsonElementSerializer.INSTANCE, jsonElement);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
