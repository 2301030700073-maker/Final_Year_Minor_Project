package org.wikipedia.dataclient.liftwing;

import java.util.List;
import kotlin.Lazy;
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
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DescriptionSuggestion$Response$$serializer implements GeneratedSerializer {
    public static final DescriptionSuggestion$Response$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DescriptionSuggestion$Response$$serializer descriptionSuggestion$Response$$serializer = new DescriptionSuggestion$Response$$serializer();
        INSTANCE = descriptionSuggestion$Response$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.liftwing.DescriptionSuggestion.Response", descriptionSuggestion$Response$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("prediction", true);
        pluginGeneratedSerialDescriptor.addElement("blp", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{DescriptionSuggestion$Response.$childSerializers[0].getValue(), BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DescriptionSuggestion$Response.$childSerializers;
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                z2 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DescriptionSuggestion$Response(i, list, z2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DescriptionSuggestion$Response descriptionSuggestion$Response = (DescriptionSuggestion$Response) obj;
        descriptionSuggestion$Response.getClass();
        boolean z = descriptionSuggestion$Response.blp;
        List list = descriptionSuggestion$Response.prediction;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DescriptionSuggestion$Response.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, EmptyList.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 1, z);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
