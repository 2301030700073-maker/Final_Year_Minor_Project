package org.wikipedia.notifications.db;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.notifications.db.Notification;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Notification$Links$$serializer implements GeneratedSerializer {
    public static final Notification$Links$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Notification$Links$$serializer notification$Links$$serializer = new Notification$Links$$serializer();
        INSTANCE = notification$Links$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.notifications.db.Notification.Links", notification$Links$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("primaryLink", true);
        pluginGeneratedSerialDescriptor.addElement("primary", true);
        pluginGeneratedSerialDescriptor.addElement("secondary", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(Notification$Link$$serializer.INSTANCE), UnsignedKt.getNullable(JsonElementSerializer.INSTANCE), UnsignedKt.getNullable((KSerializer) Notification.Links.$childSerializers[2].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Notification.Links.$childSerializers;
        boolean z = true;
        int i = 0;
        Notification.Link link = null;
        JsonElement jsonElement = null;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                link = (Notification.Link) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, Notification$Link$$serializer.INSTANCE, link);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, JsonElementSerializer.INSTANCE, jsonElement);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Notification.Links(i, link, jsonElement, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Notification.Links links = (Notification.Links) obj;
        links.getClass();
        List list = links.secondary;
        JsonElement jsonElement = links.primary;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Notification.Links.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || links.primaryLink != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, Notification$Link$$serializer.INSTANCE, links.primaryLink);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, JsonElementSerializer.INSTANCE, jsonElement);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
