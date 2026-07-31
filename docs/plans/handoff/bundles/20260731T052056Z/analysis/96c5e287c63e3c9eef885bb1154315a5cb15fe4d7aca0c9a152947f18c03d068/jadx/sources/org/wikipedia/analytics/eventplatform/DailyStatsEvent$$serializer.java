package org.wikipedia.analytics.eventplatform;

import java.util.List;
import kotlin.Lazy;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DailyStatsEvent$$serializer implements GeneratedSerializer {
    public static final DailyStatsEvent$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DailyStatsEvent$$serializer dailyStatsEvent$$serializer = new DailyStatsEvent$$serializer();
        INSTANCE = dailyStatsEvent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/mobile_apps/android_daily_stats/2.1.0", dailyStatsEvent$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("is_anon", true);
        pluginGeneratedSerialDescriptor.addElement("app_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("is_temp", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_age_in_days", false);
        pluginGeneratedSerialDescriptor.addElement("languages", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = DailyStatsEvent.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, stringSerializer, booleanSerializer, stringSerializer, stringSerializer, booleanSerializer, LongSerializer.INSTANCE, lazyArr[7].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DailyStatsEvent.$childSerializers;
        Object obj = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        Event.Meta meta = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        long j = 0;
        boolean z3 = true;
        List list = null;
        while (z3) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z3 = false;
                    continue;
                case 0:
                    meta = (Event.Meta) beginStructure.decodeSerializableElement(serialDescriptor, 0, Event$Meta$$serializer.INSTANCE, meta);
                    i |= 1;
                    break;
                case 1:
                    str = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    j = beginStructure.decodeLongElement(serialDescriptor, 6);
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
        return new DailyStatsEvent(i, meta, str, z, str2, str3, z2, j, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DailyStatsEvent dailyStatsEvent = (DailyStatsEvent) obj;
        dailyStatsEvent.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MobileAppsEventWithTemp.write$Self((MobileAppsEventWithTemp) dailyStatsEvent, beginStructure, serialDescriptor);
        Lazy[] lazyArr = DailyStatsEvent.$childSerializers;
        beginStructure.encodeLongElement(serialDescriptor, 6, dailyStatsEvent.app_install_age_in_days);
        beginStructure.encodeSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), dailyStatsEvent.languages);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
