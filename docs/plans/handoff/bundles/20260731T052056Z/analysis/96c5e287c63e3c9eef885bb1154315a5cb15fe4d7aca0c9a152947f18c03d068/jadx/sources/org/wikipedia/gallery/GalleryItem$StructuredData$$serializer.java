package org.wikipedia.gallery;

import java.util.HashMap;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.gallery.GalleryItem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GalleryItem$StructuredData$$serializer implements GeneratedSerializer {
    public static final GalleryItem$StructuredData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GalleryItem$StructuredData$$serializer galleryItem$StructuredData$$serializer = new GalleryItem$StructuredData$$serializer();
        INSTANCE = galleryItem$StructuredData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.gallery.GalleryItem.StructuredData", galleryItem$StructuredData$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("captions", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) GalleryItem.StructuredData.$childSerializers[0].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GalleryItem.StructuredData.$childSerializers;
        boolean z = true;
        boolean z2 = false;
        HashMap hashMap = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                hashMap = (HashMap) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), hashMap);
                z2 = true;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        GalleryItem.StructuredData structuredData = new GalleryItem.StructuredData();
        if (z2) {
            structuredData.captions = hashMap;
            return structuredData;
        }
        structuredData.captions = null;
        return structuredData;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        GalleryItem.StructuredData structuredData = (GalleryItem.StructuredData) obj;
        structuredData.getClass();
        HashMap hashMap = structuredData.captions;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GalleryItem.StructuredData.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || hashMap != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), hashMap);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
