package org.wikipedia.gallery;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.gallery.ImageInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageInfo$Derivative$$serializer implements GeneratedSerializer {
    public static final ImageInfo$Derivative$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ImageInfo$Derivative$$serializer imageInfo$Derivative$$serializer = new ImageInfo$Derivative$$serializer();
        INSTANCE = imageInfo$Derivative$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.gallery.ImageInfo.Derivative", imageInfo$Derivative$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("src", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("shorttitle", true);
        pluginGeneratedSerialDescriptor.addElement("width", true);
        pluginGeneratedSerialDescriptor.addElement("height", true);
        pluginGeneratedSerialDescriptor.addElement("bandwidth", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable2 = UnsignedKt.getNullable(stringSerializer);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, nullable, nullable2, intSerializer, intSerializer, LongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
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
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str3);
                    i |= 4;
                    break;
                case 3:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str4);
                    i |= 8;
                    break;
                case 4:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 5);
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
        return new ImageInfo.Derivative(i, str, str2, str3, str4, i2, i3, j);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ImageInfo.Derivative derivative = (ImageInfo.Derivative) obj;
        derivative.getClass();
        long j = derivative.bandwidth;
        int i = derivative.height;
        int i2 = derivative.width;
        String str = derivative.shorttitle;
        String str2 = derivative.title;
        String str3 = derivative.type;
        String str4 = derivative.src;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str4, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(4, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(5, i, serialDescriptor);
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
