package org.wikipedia.dataclient.mwapi;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
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
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.notifications.db.Notification$SeenTime$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResult$NotificationList$$serializer implements GeneratedSerializer {
    public static final MwQueryResult$NotificationList$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResult$NotificationList$$serializer mwQueryResult$NotificationList$$serializer = new MwQueryResult$NotificationList$$serializer();
        INSTANCE = mwQueryResult$NotificationList$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResult.NotificationList", mwQueryResult$NotificationList$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("list", true);
        pluginGeneratedSerialDescriptor.addElement("seenTime", true);
        pluginGeneratedSerialDescriptor.addElement("count", true);
        pluginGeneratedSerialDescriptor.addElement("rawcount", true);
        pluginGeneratedSerialDescriptor.addElement("continue", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) MwQueryResult.NotificationList.$childSerializers[0].getValue());
        KSerializer nullable2 = UnsignedKt.getNullable(Notification$SeenTime$$serializer.INSTANCE);
        KSerializer nullable3 = UnsignedKt.getNullable(StringSerializer.INSTANCE);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, intSerializer, intSerializer, nullable3};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwQueryResult.NotificationList.$childSerializers;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        List list = null;
        Notification.SeenTime seenTime = null;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                seenTime = (Notification.SeenTime) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, Notification$SeenTime$$serializer.INSTANCE, seenTime);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 2);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                i3 = beginStructure.decodeIntElement(serialDescriptor, 3);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryResult.NotificationList(i, list, seenTime, i2, i3, str);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        MwQueryResult.NotificationList notificationList = (MwQueryResult.NotificationList) obj;
        notificationList.getClass();
        String str = notificationList.continueStr;
        int i = notificationList.rawcount;
        int i2 = notificationList.count;
        Notification.SeenTime seenTime = notificationList.seenTime;
        List list = notificationList.list;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwQueryResult.NotificationList.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || seenTime != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, Notification$SeenTime$$serializer.INSTANCE, seenTime);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(2, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(3, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
