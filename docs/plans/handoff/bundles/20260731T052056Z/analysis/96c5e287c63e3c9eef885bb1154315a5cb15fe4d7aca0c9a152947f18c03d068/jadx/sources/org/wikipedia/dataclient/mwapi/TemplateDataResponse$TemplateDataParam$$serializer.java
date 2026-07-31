package org.wikipedia.dataclient.mwapi;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.TemplateDataResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TemplateDataResponse$TemplateDataParam$$serializer implements GeneratedSerializer {
    public static final TemplateDataResponse$TemplateDataParam$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        TemplateDataResponse$TemplateDataParam$$serializer templateDataResponse$TemplateDataParam$$serializer = new TemplateDataResponse$TemplateDataParam$$serializer();
        INSTANCE = templateDataResponse$TemplateDataParam$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.TemplateDataResponse.TemplateDataParam", templateDataResponse$TemplateDataParam$$serializer, 11);
        pluginGeneratedSerialDescriptor.addElement("label", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("default", true);
        pluginGeneratedSerialDescriptor.addElement("example", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("required", true);
        pluginGeneratedSerialDescriptor.addElement("suggested", true);
        pluginGeneratedSerialDescriptor.addElement("autovalue", true);
        pluginGeneratedSerialDescriptor.addElement("suggestedvalues", true);
        pluginGeneratedSerialDescriptor.addElement("aliases", true);
        pluginGeneratedSerialDescriptor.addElement("deprecated", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = TemplateDataResponse.TemplateDataParam.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), stringSerializer, booleanSerializer, booleanSerializer, UnsignedKt.getNullable(stringSerializer), lazyArr[8].getValue(), lazyArr[9].getValue(), UnsignedKt.getNullable(JsonElementSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Lazy[] lazyArr;
        boolean z;
        Lazy[] lazyArr2;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr3 = TemplateDataResponse.TemplateDataParam.$childSerializers;
        JsonElement jsonElement = null;
        List list = null;
        List list2 = null;
        boolean z2 = true;
        String str = null;
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        boolean z3 = false;
        boolean z4 = false;
        while (z2) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z2 = false;
                case 0:
                    lazyArr = lazyArr3;
                    z = z2;
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str2);
                    i |= 1;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 1:
                    lazyArr = lazyArr3;
                    z = z2;
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str3);
                    i |= 2;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 2:
                    lazyArr = lazyArr3;
                    z = z2;
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str4);
                    i |= 4;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 3:
                    lazyArr = lazyArr3;
                    z = z2;
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str5);
                    i |= 8;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 4:
                    lazyArr2 = lazyArr3;
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    lazyArr3 = lazyArr2;
                case 5:
                    lazyArr2 = lazyArr3;
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                    i |= 32;
                    lazyArr3 = lazyArr2;
                case 6:
                    lazyArr2 = lazyArr3;
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 6);
                    i |= 64;
                    lazyArr3 = lazyArr2;
                case 7:
                    lazyArr = lazyArr3;
                    z = z2;
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str);
                    i |= 128;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 8:
                    lazyArr = lazyArr3;
                    z = z2;
                    list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 8, (KSerializer) lazyArr[8].getValue(), list2);
                    i |= 256;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 9:
                    lazyArr = lazyArr3;
                    z = z2;
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr[9].getValue(), list);
                    i |= 512;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 10:
                    lazyArr = lazyArr3;
                    z = z2;
                    jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, JsonElementSerializer.INSTANCE, jsonElement);
                    i |= 1024;
                    lazyArr3 = lazyArr;
                    z2 = z;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new TemplateDataResponse.TemplateDataParam(i, str2, str3, str4, str5, str6, z3, z4, str, list2, list, jsonElement);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        TemplateDataResponse.TemplateDataParam templateDataParam = (TemplateDataResponse.TemplateDataParam) obj;
        templateDataParam.getClass();
        JsonElement jsonElement = templateDataParam.deprecated;
        List list = templateDataParam.aliases;
        List list2 = templateDataParam.suggestedValues;
        String str = templateDataParam.autoValue;
        boolean z = templateDataParam.suggested;
        boolean z2 = templateDataParam.required;
        String str2 = templateDataParam.type;
        String str3 = templateDataParam.example;
        String str4 = templateDataParam.f28default;
        String str5 = templateDataParam.description;
        String str6 = templateDataParam.label;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = TemplateDataResponse.TemplateDataParam.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str6 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str6);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str5 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 4, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z2) {
            beginStructure.encodeBooleanElement(serialDescriptor, 5, z2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 6, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str);
        }
        boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
        EmptyList emptyList = EmptyList.INSTANCE;
        if (shouldEncodeElementDefault || !Intrinsics.areEqual(list2, emptyList)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 8, (KSerializer) lazyArr[8].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, emptyList)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr[9].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 10, JsonElementSerializer.INSTANCE, jsonElement);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
