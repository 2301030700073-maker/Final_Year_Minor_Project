package org.wikipedia.history;

import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.DateSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryEntry$$serializer implements GeneratedSerializer {
    public static final HistoryEntry$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        HistoryEntry$$serializer historyEntry$$serializer = new HistoryEntry$$serializer();
        INSTANCE = historyEntry$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.history.HistoryEntry", historyEntry$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("authority", true);
        pluginGeneratedSerialDescriptor.addElement("lang", true);
        pluginGeneratedSerialDescriptor.addElement("apiTitle", true);
        pluginGeneratedSerialDescriptor.addElement("displayTitle", true);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("namespace", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("source", true);
        pluginGeneratedSerialDescriptor.addElement("prevId", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, longSerializer, stringSerializer, DateSerializer.INSTANCE, IntSerializer.INSTANCE, longSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        Date date = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        String str5 = null;
        long j2 = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    j = beginStructure.decodeLongElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    date = (Date) beginStructure.decodeSerializableElement(serialDescriptor, 6, DateSerializer.INSTANCE, date);
                    i |= 64;
                    break;
                case 7:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        HistoryEntry historyEntry = new HistoryEntry();
        if ((i & 1) == 0) {
            historyEntry.authority = "";
        } else {
            historyEntry.authority = str;
        }
        if ((i & 2) == 0) {
            historyEntry.lang = "";
        } else {
            historyEntry.lang = str2;
        }
        if ((i & 4) == 0) {
            historyEntry.apiTitle = "";
        } else {
            historyEntry.apiTitle = str3;
        }
        if ((i & 8) == 0) {
            historyEntry.displayTitle = "";
        } else {
            historyEntry.displayTitle = str4;
        }
        if ((i & 16) == 0) {
            historyEntry.id = 0L;
        } else {
            historyEntry.id = j;
        }
        if ((i & 32) == 0) {
            historyEntry.namespace = "";
        } else {
            historyEntry.namespace = str5;
        }
        if ((i & 64) == 0) {
            historyEntry.timestamp = new Date();
        } else {
            historyEntry.timestamp = date;
        }
        if ((i & 128) == 0) {
            historyEntry.source = 2;
        } else {
            historyEntry.source = i2;
        }
        if ((i & 256) == 0) {
            historyEntry.prevId = -1L;
        } else {
            historyEntry.prevId = j2;
        }
        historyEntry.pageTitle = null;
        historyEntry.referrer = null;
        return historyEntry;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        HistoryEntry historyEntry = (HistoryEntry) obj;
        historyEntry.getClass();
        int i = historyEntry.source;
        Date date = historyEntry.timestamp;
        String str = historyEntry.namespace;
        String str2 = historyEntry.apiTitle;
        String str3 = historyEntry.lang;
        String str4 = historyEntry.authority;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str4, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 2, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(historyEntry.displayTitle, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 3, historyEntry.displayTitle);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || historyEntry.id != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 4, historyEntry.id);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 5, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(date, new Date())) {
            beginStructure.encodeSerializableElement(serialDescriptor, 6, DateSerializer.INSTANCE, date);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 2) {
            beginStructure.encodeIntElement(7, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || historyEntry.prevId != -1) {
            beginStructure.encodeLongElement(serialDescriptor, 8, historyEntry.prevId);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
