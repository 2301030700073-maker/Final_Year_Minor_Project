package org.wikipedia.dataclient.wikidata;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.wikidata.Entities;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Entities$Entity$$serializer implements GeneratedSerializer {
    public static final Entities$Entity$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Entities$Entity$$serializer entities$Entity$$serializer = new Entities$Entity$$serializer();
        INSTANCE = entities$Entity$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.wikidata.Entities.Entity", entities$Entity$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("labels", true);
        pluginGeneratedSerialDescriptor.addElement("descriptions", true);
        pluginGeneratedSerialDescriptor.addElement("sitelinks", true);
        pluginGeneratedSerialDescriptor.addElement("statements", true);
        pluginGeneratedSerialDescriptor.addElement("missing", true);
        pluginGeneratedSerialDescriptor.addElement("lastrevid", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        return new KSerializer[]{StringSerializer.INSTANCE, UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), LongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i = 0;
        String str = null;
        JsonElement jsonElement = null;
        JsonElement jsonElement2 = null;
        JsonElement jsonElement3 = null;
        JsonElement jsonElement4 = null;
        JsonElement jsonElement5 = null;
        long j = 0;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, JsonElementSerializer.INSTANCE, jsonElement);
                    i |= 2;
                    break;
                case 2:
                    jsonElement2 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, JsonElementSerializer.INSTANCE, jsonElement2);
                    i |= 4;
                    break;
                case 3:
                    jsonElement3 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, JsonElementSerializer.INSTANCE, jsonElement3);
                    i |= 8;
                    break;
                case 4:
                    jsonElement4 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, JsonElementSerializer.INSTANCE, jsonElement4);
                    i |= 16;
                    break;
                case 5:
                    jsonElement5 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, JsonElementSerializer.INSTANCE, jsonElement5);
                    i |= 32;
                    break;
                case 6:
                    j = beginStructure.decodeLongElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Entities.Entity(i, str, jsonElement, jsonElement2, jsonElement3, jsonElement4, jsonElement5, j);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Entities.Entity entity = (Entities.Entity) obj;
        entity.getClass();
        long j = entity.lastRevId;
        JsonElement jsonElement = entity.missing;
        JsonElement jsonElement2 = entity.statements;
        JsonElement jsonElement3 = entity.sitelinks;
        JsonElement jsonElement4 = entity.descriptions;
        JsonElement jsonElement5 = entity.labels;
        String str = entity.id;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement5 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, JsonElementSerializer.INSTANCE, jsonElement5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, JsonElementSerializer.INSTANCE, jsonElement4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, JsonElementSerializer.INSTANCE, jsonElement3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, JsonElementSerializer.INSTANCE, jsonElement2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, JsonElementSerializer.INSTANCE, jsonElement);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 6, j);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
