package org.wikimedia.testkitchen.config;

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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikimedia.testkitchen.config.StreamConfig;
import org.wikimedia.testkitchen.config.sampling.SampleConfig;
import org.wikimedia.testkitchen.config.sampling.SampleConfig$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamConfig$$serializer implements GeneratedSerializer {
    public static final StreamConfig$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        StreamConfig$$serializer streamConfig$$serializer = new StreamConfig$$serializer();
        INSTANCE = streamConfig$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.StreamConfig", streamConfig$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("stream", true);
        pluginGeneratedSerialDescriptor.addElement("canary_events_enabled", true);
        pluginGeneratedSerialDescriptor.addElement("destination_event_service", true);
        pluginGeneratedSerialDescriptor.addElement("schema_title", true);
        pluginGeneratedSerialDescriptor.addElement("producers", true);
        pluginGeneratedSerialDescriptor.addElement("sample", true);
        pluginGeneratedSerialDescriptor.addElement("topic_prefixes", true);
        pluginGeneratedSerialDescriptor.addElement("topics", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = StreamConfig.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, BooleanSerializer.INSTANCE, stringSerializer, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(StreamConfig$ProducerConfig$$serializer.INSTANCE), UnsignedKt.getNullable(SampleConfig$$serializer.INSTANCE), lazyArr[6].getValue(), lazyArr[7].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = StreamConfig.$childSerializers;
        Object obj = null;
        boolean z = true;
        List list = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        StreamConfig.ProducerConfig producerConfig = null;
        SampleConfig sampleConfig = null;
        List list2 = null;
        int i = 0;
        boolean z2 = false;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str3);
                    i |= 8;
                    break;
                case 4:
                    producerConfig = (StreamConfig.ProducerConfig) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StreamConfig$ProducerConfig$$serializer.INSTANCE, producerConfig);
                    i |= 16;
                    break;
                case 5:
                    sampleConfig = (SampleConfig) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, SampleConfig$$serializer.INSTANCE, sampleConfig);
                    i |= 32;
                    break;
                case 6:
                    list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), list2);
                    i |= 64;
                    break;
                case 7:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), list);
                    i |= 128;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new StreamConfig(i, str, z2, str2, str3, producerConfig, sampleConfig, list2, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        StreamConfig streamConfig = (StreamConfig) obj;
        streamConfig.getClass();
        List list = streamConfig.topics;
        List list2 = streamConfig.topicPrefixes;
        SampleConfig sampleConfig = streamConfig.sampleConfig;
        StreamConfig.ProducerConfig producerConfig = streamConfig.producerConfig;
        String str = streamConfig.schemaTitle;
        String str2 = streamConfig.destinationEventServiceKey;
        boolean z = streamConfig.canaryEventsEnabled;
        String str3 = streamConfig.streamName;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = StreamConfig.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 1, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "eventgate-analytics-external")) {
            beginStructure.encodeStringElement(serialDescriptor, 2, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || producerConfig != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StreamConfig$ProducerConfig$$serializer.INSTANCE, producerConfig);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || sampleConfig != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, SampleConfig$$serializer.INSTANCE, sampleConfig);
        }
        boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
        EmptyList emptyList = EmptyList.INSTANCE;
        if (shouldEncodeElementDefault || !Intrinsics.areEqual(list2, emptyList)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, emptyList)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
