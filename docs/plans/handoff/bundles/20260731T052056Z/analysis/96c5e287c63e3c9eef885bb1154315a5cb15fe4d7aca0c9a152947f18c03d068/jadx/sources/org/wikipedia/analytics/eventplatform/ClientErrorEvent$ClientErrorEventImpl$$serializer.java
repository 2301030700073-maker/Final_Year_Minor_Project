package org.wikipedia.analytics.eventplatform;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ClientErrorEvent$ClientErrorEventImpl$$serializer implements GeneratedSerializer {
    public static final ClientErrorEvent$ClientErrorEventImpl$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ClientErrorEvent$ClientErrorEventImpl$$serializer clientErrorEvent$ClientErrorEventImpl$$serializer = new ClientErrorEvent$ClientErrorEventImpl$$serializer();
        INSTANCE = clientErrorEvent$ClientErrorEventImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/mediawiki/client/error/2.0.0", clientErrorEvent$ClientErrorEventImpl$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("message", false);
        pluginGeneratedSerialDescriptor.addElement("error_class", true);
        pluginGeneratedSerialDescriptor.addElement("error_context", true);
        pluginGeneratedSerialDescriptor.addElement("stack_trace", true);
        pluginGeneratedSerialDescriptor.addElement("http", true);
        pluginGeneratedSerialDescriptor.addElement("url", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(ClientErrorEvent$Http$$serializer.INSTANCE), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        Event.Meta meta = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        ClientErrorEvent$Http clientErrorEvent$Http = null;
        String str5 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    meta = (Event.Meta) beginStructure.decodeSerializableElement(serialDescriptor, 0, Event$Meta$$serializer.INSTANCE, meta);
                    i |= 1;
                    break;
                case 1:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                    i |= 2;
                    break;
                case 2:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
                    i |= 4;
                    break;
                case 3:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str3);
                    i |= 8;
                    break;
                case 4:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str4);
                    i |= 16;
                    break;
                case 5:
                    clientErrorEvent$Http = (ClientErrorEvent$Http) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, ClientErrorEvent$Http$$serializer.INSTANCE, clientErrorEvent$Http);
                    i |= 32;
                    break;
                case 6:
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str5);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ClientErrorEvent$ClientErrorEventImpl(i, meta, str, str2, str3, str4, clientErrorEvent$Http, str5);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ClientErrorEvent$ClientErrorEventImpl clientErrorEvent$ClientErrorEventImpl = (ClientErrorEvent$ClientErrorEventImpl) obj;
        clientErrorEvent$ClientErrorEventImpl.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Event.write$Self(clientErrorEvent$ClientErrorEventImpl, beginStructure, serialDescriptor);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        String str = clientErrorEvent$ClientErrorEventImpl.message;
        String str2 = clientErrorEvent$ClientErrorEventImpl.url;
        ClientErrorEvent$Http clientErrorEvent$Http = clientErrorEvent$ClientErrorEventImpl.http;
        String str3 = clientErrorEvent$ClientErrorEventImpl.stackTrace;
        String str4 = clientErrorEvent$ClientErrorEventImpl.errorContext;
        String str5 = clientErrorEvent$ClientErrorEventImpl.errorClass;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, stringSerializer, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str5 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, str5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, stringSerializer, str4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, stringSerializer, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || clientErrorEvent$Http != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, ClientErrorEvent$Http$$serializer.INSTANCE, clientErrorEvent$Http);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, stringSerializer, str2);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
