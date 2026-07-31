package org.wikipedia.bridge;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.bridge.CommunicationBridge;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CommunicationBridge$BridgeMessage$$serializer implements GeneratedSerializer {
    public static final CommunicationBridge$BridgeMessage$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        CommunicationBridge$BridgeMessage$$serializer communicationBridge$BridgeMessage$$serializer = new CommunicationBridge$BridgeMessage$$serializer();
        INSTANCE = communicationBridge$BridgeMessage$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.bridge.CommunicationBridge.BridgeMessage", communicationBridge$BridgeMessage$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("action", true);
        pluginGeneratedSerialDescriptor.addElement("data", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, UnsignedKt.getNullable(JsonObjectSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        String str = null;
        JsonObject jsonObject = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                jsonObject = (JsonObject) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, JsonObjectSerializer.INSTANCE, jsonObject);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new CommunicationBridge.BridgeMessage(i, str, jsonObject);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        CommunicationBridge.BridgeMessage bridgeMessage = (CommunicationBridge.BridgeMessage) obj;
        bridgeMessage.getClass();
        JsonObject jsonObject = bridgeMessage.data;
        String str = bridgeMessage.action;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonObject != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, JsonObjectSerializer.INSTANCE, jsonObject);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
