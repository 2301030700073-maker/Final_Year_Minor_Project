package org.wikipedia.notifications.db;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.notifications.db.Notification;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Notification$$serializer implements GeneratedSerializer {
    public static final Notification$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Notification$$serializer notification$$serializer = new Notification$$serializer();
        INSTANCE = notification$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.notifications.db.Notification", notification$$serializer, 10);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("wiki", true);
        pluginGeneratedSerialDescriptor.addElement("read", true);
        pluginGeneratedSerialDescriptor.addElement("category", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("revid", true);
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("agent", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("*", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable2 = UnsignedKt.getNullable(Notification$Title$$serializer.INSTANCE);
        KSerializer nullable3 = UnsignedKt.getNullable(Notification$Agent$$serializer.INSTANCE);
        KSerializer nullable4 = UnsignedKt.getNullable(Notification$Timestamp$$serializer.INSTANCE);
        KSerializer nullable5 = UnsignedKt.getNullable(Notification$Contents$$serializer.INSTANCE);
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{longSerializer, stringSerializer, nullable, stringSerializer, stringSerializer, longSerializer, nullable2, nullable3, nullable4, nullable5};
    }

    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [org.wikipedia.notifications.db.Notification$Agent, org.wikipedia.notifications.db.Notification$Contents, org.wikipedia.notifications.db.Notification$Timestamp] */
    /* JADX WARN: Type inference failed for: r1v13 */
    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        ?? r1;
        boolean z;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Notification.Contents contents = null;
        Notification.Agent agent = null;
        Notification.Timestamp timestamp = null;
        Notification.Title title = null;
        boolean z2 = true;
        int i = 0;
        long j = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j2 = 0;
        while (z2) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z2 = false;
                    continue;
                case 0:
                    z = z2;
                    j = beginStructure.decodeLongElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    str = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    continue;
                case 2:
                    z = z2;
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
                    i |= 4;
                    break;
                case 3:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    continue;
                case 4:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    continue;
                case 5:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 5);
                    i |= 32;
                    continue;
                case 6:
                    z = z2;
                    title = (Notification.Title) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, Notification$Title$$serializer.INSTANCE, title);
                    i |= 64;
                    break;
                case 7:
                    z = z2;
                    agent = (Notification.Agent) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, Notification$Agent$$serializer.INSTANCE, agent);
                    i |= 128;
                    break;
                case 8:
                    z = z2;
                    timestamp = (Notification.Timestamp) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, Notification$Timestamp$$serializer.INSTANCE, timestamp);
                    i |= 256;
                    break;
                case 9:
                    z = z2;
                    contents = (Notification.Contents) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, Notification$Contents$$serializer.INSTANCE, contents);
                    i |= 512;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
            z2 = z;
        }
        beginStructure.endStructure(serialDescriptor);
        Notification notification = new Notification();
        if ((i & 1) == 0) {
            notification.id = 0L;
        } else {
            notification.id = j;
        }
        if ((i & 2) == 0) {
            notification.wiki = "";
        } else {
            notification.wiki = str;
        }
        if ((i & 4) == 0) {
            notification.read = null;
        } else {
            notification.read = str2;
        }
        if ((i & 8) == 0) {
            notification.category = "";
        } else {
            notification.category = str3;
        }
        if ((i & 16) == 0) {
            notification.type = "";
        } else {
            notification.type = str4;
        }
        notification.revid = (i & 32) == 0 ? 0L : j2;
        if ((i & 64) == 0) {
            r1 = 0;
            notification.title = null;
        } else {
            r1 = 0;
            notification.title = title;
        }
        if ((i & 128) == 0) {
            notification.agent = r1;
        } else {
            notification.agent = agent;
        }
        if ((i & 256) == 0) {
            notification.timestamp = r1;
        } else {
            notification.timestamp = timestamp;
        }
        if ((i & 512) == 0) {
            notification.contents = r1;
            return notification;
        }
        notification.contents = contents;
        return notification;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Notification notification = (Notification) obj;
        notification.getClass();
        Notification.Contents contents = notification.contents;
        Notification.Timestamp timestamp = notification.timestamp;
        Notification.Agent agent = notification.agent;
        Notification.Title title = notification.title;
        long j = notification.revid;
        String str = notification.type;
        String str2 = notification.category;
        String str3 = notification.wiki;
        long j2 = notification.id;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j2 != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 0, j2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || notification.read != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, notification.read);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 3, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 4, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 5, j);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || title != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, Notification$Title$$serializer.INSTANCE, title);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agent != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, Notification$Agent$$serializer.INSTANCE, agent);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || timestamp != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, Notification$Timestamp$$serializer.INSTANCE, timestamp);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || contents != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, Notification$Contents$$serializer.INSTANCE, contents);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
