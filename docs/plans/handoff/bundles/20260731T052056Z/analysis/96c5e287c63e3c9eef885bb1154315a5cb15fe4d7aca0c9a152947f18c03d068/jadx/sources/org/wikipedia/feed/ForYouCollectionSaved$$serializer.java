package org.wikipedia.feed;

import j$.time.LocalDateTime;
import java.util.Map;
import kotlin.Lazy;
import kotlin.UnsignedKt;
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
import org.wikipedia.json.LocalDateTimeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCollectionSaved$$serializer implements GeneratedSerializer {
    public static final ForYouCollectionSaved$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ForYouCollectionSaved$$serializer forYouCollectionSaved$$serializer = new ForYouCollectionSaved$$serializer();
        INSTANCE = forYouCollectionSaved$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.ForYouCollectionSaved", forYouCollectionSaved$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("dateTime", true);
        pluginGeneratedSerialDescriptor.addElement("modulesPerLanguage", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(LocalDateTimeSerializer.INSTANCE), ForYouCollectionSaved.$childSerializers[1].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ForYouCollectionSaved.$childSerializers;
        boolean z = true;
        int i = 0;
        LocalDateTime localDateTime = null;
        Map map = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                localDateTime = (LocalDateTime) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, LocalDateTimeSerializer.INSTANCE, localDateTime);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                map = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), map);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ForYouCollectionSaved(i, localDateTime, map);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ForYouCollectionSaved forYouCollectionSaved = (ForYouCollectionSaved) obj;
        forYouCollectionSaved.getClass();
        Map map = forYouCollectionSaved.modulesPerLanguage;
        LocalDateTime localDateTime = forYouCollectionSaved.dateTime;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ForYouCollectionSaved.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || localDateTime != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, LocalDateTimeSerializer.INSTANCE, localDateTime);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(map, EmptyMap.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), map);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
