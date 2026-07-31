package org.wikipedia.dataclient.growthtasks;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GrowthImageSuggestion$AddImageFeedbackBody$$serializer implements GeneratedSerializer {
    public static final GrowthImageSuggestion$AddImageFeedbackBody$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GrowthImageSuggestion$AddImageFeedbackBody$$serializer growthImageSuggestion$AddImageFeedbackBody$$serializer = new GrowthImageSuggestion$AddImageFeedbackBody$$serializer();
        INSTANCE = growthImageSuggestion$AddImageFeedbackBody$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion.AddImageFeedbackBody", growthImageSuggestion$AddImageFeedbackBody$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("token", true);
        pluginGeneratedSerialDescriptor.addElement("editRevId", true);
        pluginGeneratedSerialDescriptor.addElement("filename", true);
        pluginGeneratedSerialDescriptor.addElement("accepted", true);
        pluginGeneratedSerialDescriptor.addElement("reasons", true);
        pluginGeneratedSerialDescriptor.addElement("caption", true);
        pluginGeneratedSerialDescriptor.addElement("sectionTitle", true);
        pluginGeneratedSerialDescriptor.addElement("sectionNumber", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = GrowthImageSuggestion.AddImageFeedbackBody.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, LongSerializer.INSTANCE, stringSerializer, BooleanSerializer.INSTANCE, lazyArr[4].getValue(), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(IntSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GrowthImageSuggestion.AddImageFeedbackBody.$childSerializers;
        long j = 0;
        Integer num = null;
        boolean z = true;
        String str = null;
        String str2 = null;
        int i = 0;
        String str3 = null;
        String str4 = null;
        boolean z2 = false;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    j = beginStructure.decodeLongElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), list);
                    i |= 16;
                    break;
                case 5:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str);
                    i |= 32;
                    break;
                case 6:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str2);
                    i |= 64;
                    break;
                case 7:
                    num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, IntSerializer.INSTANCE, num);
                    i |= 128;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new GrowthImageSuggestion.AddImageFeedbackBody(i, str3, j, str4, z2, list, str, str2, num);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        GrowthImageSuggestion.AddImageFeedbackBody addImageFeedbackBody = (GrowthImageSuggestion.AddImageFeedbackBody) obj;
        addImageFeedbackBody.getClass();
        String str = addImageFeedbackBody.filename;
        long j = addImageFeedbackBody.editRevId;
        String str2 = addImageFeedbackBody.token;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GrowthImageSuggestion.AddImageFeedbackBody.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 1, j);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 2, str);
        }
        beginStructure.encodeBooleanElement(serialDescriptor, 3, addImageFeedbackBody.accepted);
        beginStructure.encodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), addImageFeedbackBody.reasons);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, stringSerializer, addImageFeedbackBody.caption);
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, stringSerializer, addImageFeedbackBody.sectionTitle);
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, IntSerializer.INSTANCE, addImageFeedbackBody.sectionNumber);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
