package org.wikimedia.testkitchen.config;

import java.util.Map;
import kotlin.Lazy;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamConfigCollection$$serializer implements GeneratedSerializer {
    public static final StreamConfigCollection$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        StreamConfigCollection$$serializer streamConfigCollection$$serializer = new StreamConfigCollection$$serializer();
        INSTANCE = streamConfigCollection$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.StreamConfigCollection", streamConfigCollection$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("streams", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{StreamConfigCollection.$childSerializers[0].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = StreamConfigCollection.$childSerializers;
        boolean z = true;
        boolean z2 = false;
        Map map = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                map = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), map);
                z2 = true;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        StreamConfigCollection streamConfigCollection = new StreamConfigCollection();
        if (z2) {
            streamConfigCollection.streamConfigs = map;
            return streamConfigCollection;
        }
        streamConfigCollection.streamConfigs = EmptyMap.INSTANCE;
        return streamConfigCollection;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        StreamConfigCollection streamConfigCollection = (StreamConfigCollection) obj;
        streamConfigCollection.getClass();
        Map map = streamConfigCollection.streamConfigs;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = StreamConfigCollection.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(map, EmptyMap.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), map);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
