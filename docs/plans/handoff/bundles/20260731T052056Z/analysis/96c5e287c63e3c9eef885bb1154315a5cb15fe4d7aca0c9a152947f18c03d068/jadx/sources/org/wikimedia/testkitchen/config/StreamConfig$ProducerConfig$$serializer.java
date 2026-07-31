package org.wikimedia.testkitchen.config;

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
public final /* synthetic */ class StreamConfig$ProducerConfig$$serializer implements GeneratedSerializer {
    public static final StreamConfig$ProducerConfig$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        StreamConfig$ProducerConfig$$serializer streamConfig$ProducerConfig$$serializer = new StreamConfig$ProducerConfig$$serializer();
        INSTANCE = streamConfig$ProducerConfig$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.StreamConfig.ProducerConfig", streamConfig$ProducerConfig$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("metrics_platform_client", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(StreamConfig$MetricsPlatformClientConfig$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        boolean z2 = false;
        StreamConfig.MetricsPlatformClientConfig metricsPlatformClientConfig = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                metricsPlatformClientConfig = (StreamConfig.MetricsPlatformClientConfig) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StreamConfig$MetricsPlatformClientConfig$$serializer.INSTANCE, metricsPlatformClientConfig);
                z2 = true;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        StreamConfig.ProducerConfig producerConfig = new StreamConfig.ProducerConfig();
        if (z2) {
            producerConfig.metricsPlatformClientConfig = metricsPlatformClientConfig;
            return producerConfig;
        }
        producerConfig.metricsPlatformClientConfig = null;
        return producerConfig;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        StreamConfig.ProducerConfig producerConfig = (StreamConfig.ProducerConfig) obj;
        producerConfig.getClass();
        StreamConfig.MetricsPlatformClientConfig metricsPlatformClientConfig = producerConfig.metricsPlatformClientConfig;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || metricsPlatformClientConfig != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, StreamConfig$MetricsPlatformClientConfig$$serializer.INSTANCE, metricsPlatformClientConfig);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
