package org.wikipedia.dataclient.growthtasks;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GrowthImageSuggestion$ImageItem$$serializer implements GeneratedSerializer {
    public static final GrowthImageSuggestion$ImageItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GrowthImageSuggestion$ImageItem$$serializer growthImageSuggestion$ImageItem$$serializer = new GrowthImageSuggestion$ImageItem$$serializer();
        INSTANCE = growthImageSuggestion$ImageItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion.ImageItem", growthImageSuggestion$ImageItem$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("image", true);
        pluginGeneratedSerialDescriptor.addElement("displayFilename", true);
        pluginGeneratedSerialDescriptor.addElement("source", true);
        pluginGeneratedSerialDescriptor.addElement("projects", true);
        pluginGeneratedSerialDescriptor.addElement("metadata", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = GrowthImageSuggestion.ImageItem.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, lazyArr[3].getValue(), UnsignedKt.getNullable(GrowthImageSuggestion$ImageMetadata$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GrowthImageSuggestion.ImageItem.$childSerializers;
        boolean z = true;
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        List list = null;
        GrowthImageSuggestion.ImageMetadata imageMetadata = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                str3 = beginStructure.decodeStringElement(serialDescriptor, 2);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                imageMetadata = (GrowthImageSuggestion.ImageMetadata) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, GrowthImageSuggestion$ImageMetadata$$serializer.INSTANCE, imageMetadata);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new GrowthImageSuggestion.ImageItem(i, str, str2, str3, list, imageMetadata);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        GrowthImageSuggestion.ImageItem imageItem = (GrowthImageSuggestion.ImageItem) obj;
        imageItem.getClass();
        GrowthImageSuggestion.ImageMetadata imageMetadata = imageItem.metadata;
        List list = imageItem.projects;
        String str = imageItem.source;
        String str2 = imageItem.displayFilename;
        String str3 = imageItem.image;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GrowthImageSuggestion.ImageItem.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 2, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, EmptyList.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || imageMetadata != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, GrowthImageSuggestion$ImageMetadata$$serializer.INSTANCE, imageMetadata);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
