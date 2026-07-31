package org.wikimedia.testkitchen.config;

import java.util.List;
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
import org.wikimedia.testkitchen.config.StreamConfig;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamConfig$MetricsPlatformClientConfig$$serializer implements GeneratedSerializer {
    public static final StreamConfig$MetricsPlatformClientConfig$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        StreamConfig$MetricsPlatformClientConfig$$serializer streamConfig$MetricsPlatformClientConfig$$serializer = new StreamConfig$MetricsPlatformClientConfig$$serializer();
        INSTANCE = streamConfig$MetricsPlatformClientConfig$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.StreamConfig.MetricsPlatformClientConfig", streamConfig$MetricsPlatformClientConfig$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("events", true);
        pluginGeneratedSerialDescriptor.addElement("provide_values", true);
        pluginGeneratedSerialDescriptor.addElement("curation", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = StreamConfig.MetricsPlatformClientConfig.$childSerializers;
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) lazyArr[0].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[1].getValue()), UnsignedKt.getNullable(CurationFilter$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = StreamConfig.MetricsPlatformClientConfig.$childSerializers;
        boolean z = true;
        int i = 0;
        List list = null;
        List list2 = null;
        CurationFilter curationFilter = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                list2 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), list2);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                curationFilter = (CurationFilter) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, CurationFilter$$serializer.INSTANCE, curationFilter);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        StreamConfig.MetricsPlatformClientConfig metricsPlatformClientConfig = new StreamConfig.MetricsPlatformClientConfig();
        if ((i & 1) == 0) {
            metricsPlatformClientConfig.events = null;
        } else {
            metricsPlatformClientConfig.events = list;
        }
        if ((i & 2) == 0) {
            metricsPlatformClientConfig.requestedValues = null;
        } else {
            metricsPlatformClientConfig.requestedValues = list2;
        }
        if ((i & 4) == 0) {
            metricsPlatformClientConfig.curationFilter = null;
            return metricsPlatformClientConfig;
        }
        metricsPlatformClientConfig.curationFilter = curationFilter;
        return metricsPlatformClientConfig;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        StreamConfig.MetricsPlatformClientConfig metricsPlatformClientConfig = (StreamConfig.MetricsPlatformClientConfig) obj;
        metricsPlatformClientConfig.getClass();
        CurationFilter curationFilter = metricsPlatformClientConfig.curationFilter;
        List list = metricsPlatformClientConfig.requestedValues;
        List list2 = metricsPlatformClientConfig.events;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = StreamConfig.MetricsPlatformClientConfig.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationFilter != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, CurationFilter$$serializer.INSTANCE, curationFilter);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
