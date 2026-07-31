package org.wikipedia.notifications.db;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.notifications.db.Notification;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Notification$UnreadNotificationWikiItem$$serializer implements GeneratedSerializer {
    public static final Notification$UnreadNotificationWikiItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Notification$UnreadNotificationWikiItem$$serializer notification$UnreadNotificationWikiItem$$serializer = new Notification$UnreadNotificationWikiItem$$serializer();
        INSTANCE = notification$UnreadNotificationWikiItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.notifications.db.Notification.UnreadNotificationWikiItem", notification$UnreadNotificationWikiItem$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("totalCount", true);
        pluginGeneratedSerialDescriptor.addElement("source", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{IntSerializer.INSTANCE, UnsignedKt.getNullable(Notification$Source$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        Notification.Source source = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                source = (Notification.Source) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, Notification$Source$$serializer.INSTANCE, source);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Notification.UnreadNotificationWikiItem(i, i2, source);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Notification.UnreadNotificationWikiItem unreadNotificationWikiItem = (Notification.UnreadNotificationWikiItem) obj;
        unreadNotificationWikiItem.getClass();
        Notification.Source source = unreadNotificationWikiItem.source;
        int i = unreadNotificationWikiItem.totalCount;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(0, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || source != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, Notification$Source$$serializer.INSTANCE, source);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
