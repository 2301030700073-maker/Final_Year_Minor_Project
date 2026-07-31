package org.wikipedia.dataclient.wikidata;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.wikidata.Claims;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Claims$GlobeCoordinateValue$$serializer implements GeneratedSerializer {
    public static final Claims$GlobeCoordinateValue$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Claims$GlobeCoordinateValue$$serializer claims$GlobeCoordinateValue$$serializer = new Claims$GlobeCoordinateValue$$serializer();
        INSTANCE = claims$GlobeCoordinateValue$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.wikidata.Claims.GlobeCoordinateValue", claims$GlobeCoordinateValue$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("latitude", true);
        pluginGeneratedSerialDescriptor.addElement("longitude", true);
        pluginGeneratedSerialDescriptor.addElement("altitude", true);
        pluginGeneratedSerialDescriptor.addElement("precision", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        DoubleSerializer doubleSerializer = DoubleSerializer.INSTANCE;
        return new KSerializer[]{doubleSerializer, doubleSerializer, doubleSerializer, doubleSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i = 0;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                d = beginStructure.decodeDoubleElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                d2 = beginStructure.decodeDoubleElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                d3 = beginStructure.decodeDoubleElement(serialDescriptor, 2);
                i |= 4;
            } else {
                if (decodeElementIndex != 3) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                d4 = beginStructure.decodeDoubleElement(serialDescriptor, 3);
                i |= 8;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Claims.GlobeCoordinateValue(i, d, d2, d3, d4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Claims.GlobeCoordinateValue globeCoordinateValue = (Claims.GlobeCoordinateValue) obj;
        globeCoordinateValue.getClass();
        double d = globeCoordinateValue.precision;
        double d2 = globeCoordinateValue.altitude;
        double d3 = globeCoordinateValue.longitude;
        double d4 = globeCoordinateValue.latitude;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Double.compare(d4, 0.0d) != 0) {
            beginStructure.encodeDoubleElement(serialDescriptor, 0, d4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Double.compare(d3, 0.0d) != 0) {
            beginStructure.encodeDoubleElement(serialDescriptor, 1, d3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Double.compare(d2, 0.0d) != 0) {
            beginStructure.encodeDoubleElement(serialDescriptor, 2, d2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Double.compare(d, 0.0d) != 0) {
            beginStructure.encodeDoubleElement(serialDescriptor, 3, d);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
