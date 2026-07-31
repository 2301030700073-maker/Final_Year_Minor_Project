package org.wikipedia.gallery;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.gallery.GalleryItem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GalleryItem$$serializer implements GeneratedSerializer {
    public static final GalleryItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GalleryItem$$serializer galleryItem$$serializer = new GalleryItem$$serializer();
        INSTANCE = galleryItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.gallery.GalleryItem", galleryItem$$serializer, 16);
        pluginGeneratedSerialDescriptor.addElement("section_id", true);
        pluginGeneratedSerialDescriptor.addElement("wb_entity_id", true);
        pluginGeneratedSerialDescriptor.addElement("audio_type", true);
        pluginGeneratedSerialDescriptor.addElement("structured", true);
        pluginGeneratedSerialDescriptor.addElement("file_page", true);
        pluginGeneratedSerialDescriptor.addElement("duration", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("thumbnail", true);
        pluginGeneratedSerialDescriptor.addElement("original", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("caption", true);
        pluginGeneratedSerialDescriptor.addElement("sources", true);
        pluginGeneratedSerialDescriptor.addElement("credit", true);
        pluginGeneratedSerialDescriptor.addElement("titles", true);
        pluginGeneratedSerialDescriptor.addElement("artist", true);
        pluginGeneratedSerialDescriptor.addElement("license", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = GalleryItem.$childSerializers;
        KSerializer nullable = UnsignedKt.getNullable(GalleryItem$StructuredData$$serializer.INSTANCE);
        TextInfo$$serializer textInfo$$serializer = TextInfo$$serializer.INSTANCE;
        KSerializer nullable2 = UnsignedKt.getNullable(textInfo$$serializer);
        KSerializer nullable3 = UnsignedKt.getNullable((KSerializer) lazyArr[11].getValue());
        KSerializer nullable4 = UnsignedKt.getNullable(textInfo$$serializer);
        KSerializer nullable5 = UnsignedKt.getNullable(GalleryItem$Titles$$serializer.INSTANCE);
        KSerializer nullable6 = UnsignedKt.getNullable(ArtistInfo$$serializer.INSTANCE);
        KSerializer nullable7 = UnsignedKt.getNullable(ImageLicense$$serializer.INSTANCE);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        ImageInfo$$serializer imageInfo$$serializer = ImageInfo$$serializer.INSTANCE;
        return new KSerializer[]{IntSerializer.INSTANCE, stringSerializer, stringSerializer, nullable, stringSerializer, DoubleSerializer.INSTANCE, stringSerializer, imageInfo$$serializer, imageInfo$$serializer, textInfo$$serializer, nullable2, nullable3, nullable4, nullable5, nullable6, nullable7};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        String str;
        String str2;
        String str3;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GalleryItem.$childSerializers;
        double d = 0.0d;
        TextInfo textInfo = null;
        List list = null;
        TextInfo textInfo2 = null;
        TextInfo textInfo3 = null;
        GalleryItem.Titles titles = null;
        ImageInfo imageInfo = null;
        ImageInfo imageInfo2 = null;
        int i = 0;
        ArtistInfo artistInfo = null;
        ImageLicense imageLicense = null;
        String str4 = null;
        GalleryItem.StructuredData structuredData = null;
        String str5 = null;
        String str6 = null;
        boolean z = true;
        int i2 = 0;
        String str7 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    str = str5;
                    z = false;
                    str5 = str;
                case 0:
                    str2 = str4;
                    str = str5;
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    str4 = str2;
                    str5 = str;
                case 1:
                    str3 = str4;
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    str4 = str3;
                case 2:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                case 3:
                    str2 = str4;
                    str = str5;
                    structuredData = (GalleryItem.StructuredData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, GalleryItem$StructuredData$$serializer.INSTANCE, structuredData);
                    i |= 8;
                    str4 = str2;
                    str5 = str;
                case 4:
                    str3 = str4;
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    str4 = str3;
                case 5:
                    str3 = str4;
                    d = beginStructure.decodeDoubleElement(serialDescriptor, 5);
                    i |= 32;
                    str4 = str3;
                case 6:
                    str3 = str4;
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    str4 = str3;
                case 7:
                    str2 = str4;
                    str = str5;
                    imageInfo = (ImageInfo) beginStructure.decodeSerializableElement(serialDescriptor, 7, ImageInfo$$serializer.INSTANCE, imageInfo);
                    i |= 128;
                    str4 = str2;
                    str5 = str;
                case 8:
                    str2 = str4;
                    str = str5;
                    imageInfo2 = (ImageInfo) beginStructure.decodeSerializableElement(serialDescriptor, 8, ImageInfo$$serializer.INSTANCE, imageInfo2);
                    i |= 256;
                    str4 = str2;
                    str5 = str;
                case 9:
                    str2 = str4;
                    str = str5;
                    textInfo3 = (TextInfo) beginStructure.decodeSerializableElement(serialDescriptor, 9, TextInfo$$serializer.INSTANCE, textInfo3);
                    i |= 512;
                    str4 = str2;
                    str5 = str;
                case 10:
                    str2 = str4;
                    str = str5;
                    textInfo2 = (TextInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, TextInfo$$serializer.INSTANCE, textInfo2);
                    i |= 1024;
                    str4 = str2;
                    str5 = str;
                case 11:
                    str2 = str4;
                    str = str5;
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr[11].getValue(), list);
                    i |= 2048;
                    str4 = str2;
                    str5 = str;
                case 12:
                    str2 = str4;
                    str = str5;
                    textInfo = (TextInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, TextInfo$$serializer.INSTANCE, textInfo);
                    i |= 4096;
                    str4 = str2;
                    str5 = str;
                case IMAGE_VALUE:
                    str2 = str4;
                    str = str5;
                    titles = (GalleryItem.Titles) beginStructure.decodeNullableSerializableElement(serialDescriptor, 13, GalleryItem$Titles$$serializer.INSTANCE, titles);
                    i |= 8192;
                    str4 = str2;
                    str5 = str;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    str2 = str4;
                    str = str5;
                    artistInfo = (ArtistInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, ArtistInfo$$serializer.INSTANCE, artistInfo);
                    i |= 16384;
                    str4 = str2;
                    str5 = str;
                case 15:
                    str2 = str4;
                    str = str5;
                    imageLicense = (ImageLicense) beginStructure.decodeNullableSerializableElement(serialDescriptor, 15, ImageLicense$$serializer.INSTANCE, imageLicense);
                    i |= 32768;
                    str4 = str2;
                    str5 = str;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new GalleryItem(i, i2, str7, str4, structuredData, str5, d, str6, imageInfo, imageInfo2, textInfo3, textInfo2, list, textInfo, titles, artistInfo, imageLicense);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        GalleryItem galleryItem = (GalleryItem) obj;
        galleryItem.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        GalleryItem.write$Self(galleryItem, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
