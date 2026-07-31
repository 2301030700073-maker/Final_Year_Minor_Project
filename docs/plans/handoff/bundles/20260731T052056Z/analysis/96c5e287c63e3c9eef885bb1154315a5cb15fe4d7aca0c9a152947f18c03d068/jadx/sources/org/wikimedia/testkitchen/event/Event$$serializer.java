package org.wikimedia.testkitchen.event;

import kotlin.UnsignedKt;
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
import org.wikimedia.testkitchen.config.sampling.SampleConfig;
import org.wikimedia.testkitchen.config.sampling.SampleConfig$$serializer;
import org.wikimedia.testkitchen.context.AgentData;
import org.wikimedia.testkitchen.context.AgentData$$serializer;
import org.wikimedia.testkitchen.context.MediawikiData;
import org.wikimedia.testkitchen.context.MediawikiData$$serializer;
import org.wikimedia.testkitchen.context.PageData;
import org.wikimedia.testkitchen.context.PageData$$serializer;
import org.wikimedia.testkitchen.context.PerformerData;
import org.wikimedia.testkitchen.context.PerformerData$$serializer;
import org.wikimedia.testkitchen.event.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Event$$serializer implements GeneratedSerializer {
    public static final Event$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Event$$serializer event$$serializer = new Event$$serializer();
        INSTANCE = event$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.event.Event", event$$serializer, 19);
        pluginGeneratedSerialDescriptor.addElement("$schema", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("meta", false);
        pluginGeneratedSerialDescriptor.addElement("instrument_name", true);
        pluginGeneratedSerialDescriptor.addElement("agent", true);
        pluginGeneratedSerialDescriptor.addElement("page", true);
        pluginGeneratedSerialDescriptor.addElement("mediawiki", true);
        pluginGeneratedSerialDescriptor.addElement("performer", true);
        pluginGeneratedSerialDescriptor.addElement("action", true);
        pluginGeneratedSerialDescriptor.addElement("action_subtype", true);
        pluginGeneratedSerialDescriptor.addElement("action_source", true);
        pluginGeneratedSerialDescriptor.addElement("action_context", true);
        pluginGeneratedSerialDescriptor.addElement("element_id", true);
        pluginGeneratedSerialDescriptor.addElement("element_friendly_name", true);
        pluginGeneratedSerialDescriptor.addElement("funnel_name", true);
        pluginGeneratedSerialDescriptor.addElement("funnel_entry_token", true);
        pluginGeneratedSerialDescriptor.addElement("funnel_event_sequence_position", true);
        pluginGeneratedSerialDescriptor.addElement("experiment", true);
        pluginGeneratedSerialDescriptor.addElement("sample", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, UnsignedKt.getNullable(stringSerializer), Event$Meta$$serializer.INSTANCE, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(AgentData$$serializer.INSTANCE), UnsignedKt.getNullable(PageData$$serializer.INSTANCE), UnsignedKt.getNullable(MediawikiData$$serializer.INSTANCE), UnsignedKt.getNullable(PerformerData$$serializer.INSTANCE), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(IntSerializer.INSTANCE), UnsignedKt.getNullable(Event$EventExperiment$$serializer.INSTANCE), UnsignedKt.getNullable(SampleConfig$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        MediawikiData mediawikiData;
        PerformerData performerData;
        int i;
        String str;
        MediawikiData mediawikiData2;
        PerformerData performerData2;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        int i2 = 0;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        Integer num = null;
        Event.EventExperiment eventExperiment = null;
        SampleConfig sampleConfig = null;
        MediawikiData mediawikiData3 = null;
        PerformerData performerData3 = null;
        boolean z = true;
        String str10 = null;
        String str11 = null;
        Event.Meta meta = null;
        String str12 = null;
        AgentData agentData = null;
        PageData pageData = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    str = str2;
                    mediawikiData2 = mediawikiData3;
                    performerData2 = performerData3;
                    z = false;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 0:
                    str = str2;
                    mediawikiData2 = mediawikiData3;
                    performerData2 = performerData3;
                    str10 = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i2 |= 1;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 1:
                    str = str2;
                    mediawikiData2 = mediawikiData3;
                    performerData2 = performerData3;
                    str11 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str11);
                    i2 |= 2;
                    meta = meta;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 2:
                    str = str2;
                    mediawikiData2 = mediawikiData3;
                    performerData2 = performerData3;
                    meta = (Event.Meta) beginStructure.decodeSerializableElement(serialDescriptor, 2, Event$Meta$$serializer.INSTANCE, meta);
                    i2 |= 4;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 3:
                    str = str2;
                    mediawikiData2 = mediawikiData3;
                    performerData2 = performerData3;
                    str12 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str12);
                    i2 |= 8;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 4:
                    str = str2;
                    mediawikiData2 = mediawikiData3;
                    performerData2 = performerData3;
                    agentData = (AgentData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, AgentData$$serializer.INSTANCE, agentData);
                    i2 |= 16;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 5:
                    str = str2;
                    performerData2 = performerData3;
                    mediawikiData2 = mediawikiData3;
                    pageData = (PageData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, PageData$$serializer.INSTANCE, pageData);
                    i2 |= 32;
                    mediawikiData3 = mediawikiData2;
                    performerData3 = performerData2;
                    str2 = str;
                case 6:
                    str = str2;
                    performerData2 = performerData3;
                    mediawikiData3 = (MediawikiData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, MediawikiData$$serializer.INSTANCE, mediawikiData3);
                    i2 |= 64;
                    performerData3 = performerData2;
                    str2 = str;
                case 7:
                    str = str2;
                    performerData3 = (PerformerData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, PerformerData$$serializer.INSTANCE, performerData3);
                    i2 |= 128;
                    mediawikiData3 = mediawikiData3;
                    str2 = str;
                case 8:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str6);
                    i2 |= 256;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case 9:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str4);
                    i2 |= 512;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case 10:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, str3);
                    i2 |= 1024;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case 11:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, StringSerializer.INSTANCE, str2);
                    i2 |= 2048;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case 12:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, StringSerializer.INSTANCE, str5);
                    i2 |= 4096;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case IMAGE_VALUE:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 13, StringSerializer.INSTANCE, str7);
                    i2 |= 8192;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, StringSerializer.INSTANCE, str8);
                    i2 |= 16384;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case 15:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    str9 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 15, StringSerializer.INSTANCE, str9);
                    i = 32768;
                    i2 |= i;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case LAZY_VERTICAL_GRID_VALUE:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 16, IntSerializer.INSTANCE, num);
                    i = 65536;
                    i2 |= i;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case VERTICAL_GRID_ITEM_VALUE:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    eventExperiment = (Event.EventExperiment) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, Event$EventExperiment$$serializer.INSTANCE, eventExperiment);
                    i = 131072;
                    i2 |= i;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                case RADIO_GROUP_VALUE:
                    mediawikiData = mediawikiData3;
                    performerData = performerData3;
                    sampleConfig = (SampleConfig) beginStructure.decodeNullableSerializableElement(serialDescriptor, 18, SampleConfig$$serializer.INSTANCE, sampleConfig);
                    i = 262144;
                    i2 |= i;
                    mediawikiData3 = mediawikiData;
                    performerData3 = performerData;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        MediawikiData mediawikiData4 = mediawikiData3;
        PerformerData performerData4 = performerData3;
        String str13 = str11;
        Event.Meta meta2 = meta;
        beginStructure.endStructure(serialDescriptor);
        Integer num2 = num;
        return new Event(i2, str10, str13, meta2, str12, agentData, pageData, mediawikiData4, performerData4, str6, str4, str3, str2, str5, str7, str8, str9, num2, eventExperiment, sampleConfig);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Event event = (Event) obj;
        event.getClass();
        String str = event.timestamp;
        String str2 = event.schema;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
        }
        beginStructure.encodeSerializableElement(serialDescriptor, 2, Event$Meta$$serializer.INSTANCE, event.meta);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.instrumentName != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, event.instrumentName);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.agentData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, AgentData$$serializer.INSTANCE, event.agentData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.pageData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, PageData$$serializer.INSTANCE, event.pageData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.mediawikiData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, MediawikiData$$serializer.INSTANCE, event.mediawikiData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.performerData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, PerformerData$$serializer.INSTANCE, event.performerData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.action != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, event.action);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.actionSubtype != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, event.actionSubtype);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.actionSource != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, event.actionSource);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.actionContext != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 11, StringSerializer.INSTANCE, event.actionContext);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.elementId != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 12, StringSerializer.INSTANCE, event.elementId);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.elementFriendlyName != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 13, StringSerializer.INSTANCE, event.elementFriendlyName);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.funnelName != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 14, StringSerializer.INSTANCE, event.funnelName);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.funnelEntryToken != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 15, StringSerializer.INSTANCE, event.funnelEntryToken);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.funnelEventSequencePosition != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 16, IntSerializer.INSTANCE, event.funnelEventSequencePosition);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.experiment != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 17, Event$EventExperiment$$serializer.INSTANCE, event.experiment);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || event.sample != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 18, SampleConfig$$serializer.INSTANCE, event.sample);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
