package org.wikipedia.gallery;

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
import org.wikipedia.gallery.ExtMetadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ExtMetadata$$serializer implements GeneratedSerializer {
    public static final ExtMetadata$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ExtMetadata$$serializer extMetadata$$serializer = new ExtMetadata$$serializer();
        INSTANCE = extMetadata$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.gallery.ExtMetadata", extMetadata$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("ObjectName", true);
        pluginGeneratedSerialDescriptor.addElement("ImageDescription", true);
        pluginGeneratedSerialDescriptor.addElement("DateTimeOriginal", true);
        pluginGeneratedSerialDescriptor.addElement("Artist", true);
        pluginGeneratedSerialDescriptor.addElement("Credit", true);
        pluginGeneratedSerialDescriptor.addElement("LicenseShortName", true);
        pluginGeneratedSerialDescriptor.addElement("UsageTerms", true);
        pluginGeneratedSerialDescriptor.addElement("LicenseUrl", true);
        pluginGeneratedSerialDescriptor.addElement("License", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        ExtMetadata$Values$$serializer extMetadata$Values$$serializer = ExtMetadata$Values$$serializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer), UnsignedKt.getNullable(extMetadata$Values$$serializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Object obj = null;
        boolean z = true;
        ExtMetadata.Values values = null;
        ExtMetadata.Values values2 = null;
        ExtMetadata.Values values3 = null;
        ExtMetadata.Values values4 = null;
        ExtMetadata.Values values5 = null;
        ExtMetadata.Values values6 = null;
        ExtMetadata.Values values7 = null;
        ExtMetadata.Values values8 = null;
        ExtMetadata.Values values9 = null;
        int i = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    values2 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, ExtMetadata$Values$$serializer.INSTANCE, values2);
                    i |= 1;
                    break;
                case 1:
                    values3 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, ExtMetadata$Values$$serializer.INSTANCE, values3);
                    i |= 2;
                    break;
                case 2:
                    values4 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, ExtMetadata$Values$$serializer.INSTANCE, values4);
                    i |= 4;
                    break;
                case 3:
                    values5 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, ExtMetadata$Values$$serializer.INSTANCE, values5);
                    i |= 8;
                    break;
                case 4:
                    values6 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, ExtMetadata$Values$$serializer.INSTANCE, values6);
                    i |= 16;
                    break;
                case 5:
                    values7 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, ExtMetadata$Values$$serializer.INSTANCE, values7);
                    i |= 32;
                    break;
                case 6:
                    values8 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, ExtMetadata$Values$$serializer.INSTANCE, values8);
                    i |= 64;
                    break;
                case 7:
                    values9 = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, ExtMetadata$Values$$serializer.INSTANCE, values9);
                    i |= 128;
                    break;
                case 8:
                    values = (ExtMetadata.Values) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, ExtMetadata$Values$$serializer.INSTANCE, values);
                    i |= 256;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new ExtMetadata(i, values2, values3, values4, values5, values6, values7, values8, values9, values);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ExtMetadata extMetadata = (ExtMetadata) obj;
        extMetadata.getClass();
        ExtMetadata.Values values = extMetadata.license;
        ExtMetadata.Values values2 = extMetadata.licenseUrl;
        ExtMetadata.Values values3 = extMetadata.usageTerms;
        ExtMetadata.Values values4 = extMetadata.licenseShortName;
        ExtMetadata.Values values5 = extMetadata.credit;
        ExtMetadata.Values values6 = extMetadata.artist;
        ExtMetadata.Values values7 = extMetadata.dateTimeOriginal;
        ExtMetadata.Values values8 = extMetadata.imageDescription;
        ExtMetadata.Values values9 = extMetadata.objectName;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values9 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, ExtMetadata$Values$$serializer.INSTANCE, values9);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values8 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, ExtMetadata$Values$$serializer.INSTANCE, values8);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values7 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, ExtMetadata$Values$$serializer.INSTANCE, values7);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values6 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, ExtMetadata$Values$$serializer.INSTANCE, values6);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values5 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, ExtMetadata$Values$$serializer.INSTANCE, values5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, ExtMetadata$Values$$serializer.INSTANCE, values4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, ExtMetadata$Values$$serializer.INSTANCE, values3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, ExtMetadata$Values$$serializer.INSTANCE, values2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || values != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, ExtMetadata$Values$$serializer.INSTANCE, values);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
