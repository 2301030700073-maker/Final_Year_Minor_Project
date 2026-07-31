package org.wikipedia.dataclient.donate;

import j$.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.LocalDateTimeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Campaign$$serializer implements GeneratedSerializer {
    public static final Campaign$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Campaign$$serializer campaign$$serializer = new Campaign$$serializer();
        INSTANCE = campaign$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.donate.Campaign", campaign$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("version", false);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("start_time", true);
        pluginGeneratedSerialDescriptor.addElement("end_time", true);
        pluginGeneratedSerialDescriptor.addElement("platforms", true);
        pluginGeneratedSerialDescriptor.addElement("countries", true);
        pluginGeneratedSerialDescriptor.addElement("assets", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = Campaign.$childSerializers;
        LocalDateTimeSerializer localDateTimeSerializer = LocalDateTimeSerializer.INSTANCE;
        return new KSerializer[]{IntSerializer.INSTANCE, StringSerializer.INSTANCE, UnsignedKt.getNullable(localDateTimeSerializer), UnsignedKt.getNullable(localDateTimeSerializer), lazyArr[4].getValue(), lazyArr[5].getValue(), lazyArr[6].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Campaign.$childSerializers;
        Object obj = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        String str = null;
        LocalDateTime localDateTime = null;
        LocalDateTime localDateTime2 = null;
        Map map = null;
        List list = null;
        Map map2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    str = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    localDateTime = (LocalDateTime) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, LocalDateTimeSerializer.INSTANCE, localDateTime);
                    i |= 4;
                    break;
                case 3:
                    localDateTime2 = (LocalDateTime) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, LocalDateTimeSerializer.INSTANCE, localDateTime2);
                    i |= 8;
                    break;
                case 4:
                    map = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), map);
                    i |= 16;
                    break;
                case 5:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list);
                    i |= 32;
                    break;
                case 6:
                    map2 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), map2);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new Campaign(i, i2, str, localDateTime, localDateTime2, map, list, map2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Campaign campaign = (Campaign) obj;
        campaign.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Campaign.$childSerializers;
        int i = campaign.version;
        Map map = campaign.assets;
        List list = campaign.countries;
        Map map2 = campaign.platforms;
        LocalDateTime localDateTime = campaign.endDateTime;
        LocalDateTime localDateTime2 = campaign.startDateTime;
        String str = campaign.id;
        beginStructure.encodeIntElement(0, i, serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || localDateTime2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, LocalDateTimeSerializer.INSTANCE, localDateTime2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || localDateTime != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, LocalDateTimeSerializer.INSTANCE, localDateTime);
        }
        boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (shouldEncodeElementDefault || !Intrinsics.areEqual(map2, emptyMap)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), map2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, EmptyList.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(map, emptyMap)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), map);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
