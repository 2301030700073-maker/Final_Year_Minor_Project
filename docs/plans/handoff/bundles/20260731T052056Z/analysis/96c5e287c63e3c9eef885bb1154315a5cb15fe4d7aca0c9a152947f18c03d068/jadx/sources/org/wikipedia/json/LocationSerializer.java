package org.wikipedia.json;

import android.location.Location;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationSerializer implements KSerializer {
    public static final LocationSerializer INSTANCE = new LocationSerializer();
    public static final SerialDescriptorImpl descriptor;

    static {
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
        if (StringsKt.isBlank("Location")) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Blank serial names are prohibited");
            return;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("Location");
        DoubleSerializer doubleSerializer = DoubleSerializer.INSTANCE;
        PrimitiveSerialDescriptor primitiveSerialDescriptor = DoubleSerializer.descriptor;
        classSerialDescriptorBuilder.element("lat", primitiveSerialDescriptor);
        classSerialDescriptorBuilder.element("lon", primitiveSerialDescriptor);
        descriptor = new SerialDescriptorImpl("Location", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptorImpl serialDescriptorImpl = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptorImpl);
        double d = 0.0d;
        double d2 = 0.0d;
        while (true) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptorImpl);
            if (decodeElementIndex == -1) {
                Location location = new Location("");
                location.setLatitude(d);
                location.setLongitude(d2);
                beginStructure.endStructure(serialDescriptorImpl);
                return location;
            }
            if (decodeElementIndex == 0) {
                d = beginStructure.decodeDoubleElement(serialDescriptorImpl, 0);
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1(decodeElementIndex, "Unexpected index: ");
                    return null;
                }
                d2 = beginStructure.decodeDoubleElement(serialDescriptorImpl, 1);
            }
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Location location = (Location) obj;
        location.getClass();
        SerialDescriptorImpl serialDescriptorImpl = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptorImpl);
        beginStructure.encodeDoubleElement(serialDescriptorImpl, 0, location.getLatitude());
        beginStructure.encodeDoubleElement(serialDescriptorImpl, 1, location.getLongitude());
        beginStructure.endStructure(serialDescriptorImpl);
    }
}
