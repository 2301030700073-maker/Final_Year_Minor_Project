package org.wikipedia.feed.image;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
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
import org.wikipedia.gallery.ArtistInfo;
import org.wikipedia.gallery.ArtistInfo$$serializer;
import org.wikipedia.gallery.GalleryItem;
import org.wikipedia.gallery.GalleryItem$StructuredData$$serializer;
import org.wikipedia.gallery.GalleryItem$Titles$$serializer;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.gallery.ImageInfo$$serializer;
import org.wikipedia.gallery.ImageLicense;
import org.wikipedia.gallery.ImageLicense$$serializer;
import org.wikipedia.gallery.TextInfo;
import org.wikipedia.gallery.TextInfo$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FeaturedImage$$serializer implements GeneratedSerializer {
    public static final FeaturedImage$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        FeaturedImage$$serializer featuredImage$$serializer = new FeaturedImage$$serializer();
        INSTANCE = featuredImage$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.image.FeaturedImage", featuredImage$$serializer, 18);
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
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("image", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = FeaturedImage.$childSerializers;
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
        return new KSerializer[]{IntSerializer.INSTANCE, stringSerializer, stringSerializer, nullable, stringSerializer, DoubleSerializer.INSTANCE, stringSerializer, imageInfo$$serializer, imageInfo$$serializer, textInfo$$serializer, nullable2, nullable3, nullable4, nullable5, nullable6, nullable7, stringSerializer, imageInfo$$serializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        double d;
        String str;
        int i;
        String str2;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = FeaturedImage.$childSerializers;
        double d2 = 0.0d;
        TextInfo textInfo = null;
        List list = null;
        TextInfo textInfo2 = null;
        TextInfo textInfo3 = null;
        GalleryItem.Titles titles = null;
        ImageInfo imageInfo = null;
        ImageInfo imageInfo2 = null;
        int i2 = 0;
        ArtistInfo artistInfo = null;
        ImageLicense imageLicense = null;
        ImageInfo imageInfo3 = null;
        GalleryItem.StructuredData structuredData = null;
        String str3 = null;
        String str4 = null;
        boolean z = true;
        int i3 = 0;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    d = d2;
                    z = false;
                    d2 = d;
                case 0:
                    str = str3;
                    d = d2;
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i2 |= 1;
                    str3 = str;
                    d2 = d;
                case 1:
                    str2 = str3;
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i2 |= 2;
                    str3 = str2;
                case 2:
                    str2 = str3;
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i2 |= 4;
                    str3 = str2;
                case 3:
                    str = str3;
                    d = d2;
                    structuredData = (GalleryItem.StructuredData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, GalleryItem$StructuredData$$serializer.INSTANCE, structuredData);
                    i2 |= 8;
                    str3 = str;
                    d2 = d;
                case 4:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i2 |= 16;
                case 5:
                    str2 = str3;
                    d2 = beginStructure.decodeDoubleElement(serialDescriptor, 5);
                    i2 |= 32;
                    str3 = str2;
                case 6:
                    str2 = str3;
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i2 |= 64;
                    str3 = str2;
                case 7:
                    str = str3;
                    d = d2;
                    imageInfo = (ImageInfo) beginStructure.decodeSerializableElement(serialDescriptor, 7, ImageInfo$$serializer.INSTANCE, imageInfo);
                    i2 |= 128;
                    str3 = str;
                    d2 = d;
                case 8:
                    str = str3;
                    d = d2;
                    imageInfo2 = (ImageInfo) beginStructure.decodeSerializableElement(serialDescriptor, 8, ImageInfo$$serializer.INSTANCE, imageInfo2);
                    i2 |= 256;
                    str3 = str;
                    d2 = d;
                case 9:
                    str = str3;
                    d = d2;
                    textInfo3 = (TextInfo) beginStructure.decodeSerializableElement(serialDescriptor, 9, TextInfo$$serializer.INSTANCE, textInfo3);
                    i2 |= 512;
                    str3 = str;
                    d2 = d;
                case 10:
                    str = str3;
                    d = d2;
                    textInfo2 = (TextInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, TextInfo$$serializer.INSTANCE, textInfo2);
                    i2 |= 1024;
                    str3 = str;
                    d2 = d;
                case 11:
                    str = str3;
                    d = d2;
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr[11].getValue(), list);
                    i2 |= 2048;
                    str3 = str;
                    d2 = d;
                case 12:
                    str = str3;
                    d = d2;
                    textInfo = (TextInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, TextInfo$$serializer.INSTANCE, textInfo);
                    i2 |= 4096;
                    str3 = str;
                    d2 = d;
                case IMAGE_VALUE:
                    str = str3;
                    d = d2;
                    titles = (GalleryItem.Titles) beginStructure.decodeNullableSerializableElement(serialDescriptor, 13, GalleryItem$Titles$$serializer.INSTANCE, titles);
                    i2 |= 8192;
                    str3 = str;
                    d2 = d;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    str = str3;
                    d = d2;
                    artistInfo = (ArtistInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, ArtistInfo$$serializer.INSTANCE, artistInfo);
                    i2 |= 16384;
                    str3 = str;
                    d2 = d;
                case 15:
                    str = str3;
                    d = d2;
                    imageLicense = (ImageLicense) beginStructure.decodeNullableSerializableElement(serialDescriptor, 15, ImageLicense$$serializer.INSTANCE, imageLicense);
                    i = 32768;
                    i2 |= i;
                    str3 = str;
                    d2 = d;
                case LAZY_VERTICAL_GRID_VALUE:
                    str2 = str3;
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 16);
                    i2 |= 65536;
                    str3 = str2;
                case VERTICAL_GRID_ITEM_VALUE:
                    str = str3;
                    d = d2;
                    imageInfo3 = (ImageInfo) beginStructure.decodeSerializableElement(serialDescriptor, 17, ImageInfo$$serializer.INSTANCE, imageInfo3);
                    i = 131072;
                    i2 |= i;
                    str3 = str;
                    d2 = d;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new FeaturedImage(i2, i3, str5, str6, structuredData, str3, d2, str4, imageInfo, imageInfo2, textInfo3, textInfo2, list, textInfo, titles, artistInfo, imageLicense, str7, imageInfo3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        FeaturedImage featuredImage = (FeaturedImage) obj;
        featuredImage.getClass();
        ImageInfo imageInfo = featuredImage.image;
        String str = featuredImage.title;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        GalleryItem.write$Self(featuredImage, beginStructure, serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 16, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(imageInfo, new ImageInfo())) {
            beginStructure.encodeSerializableElement(serialDescriptor, 17, ImageInfo$$serializer.INSTANCE, imageInfo);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
