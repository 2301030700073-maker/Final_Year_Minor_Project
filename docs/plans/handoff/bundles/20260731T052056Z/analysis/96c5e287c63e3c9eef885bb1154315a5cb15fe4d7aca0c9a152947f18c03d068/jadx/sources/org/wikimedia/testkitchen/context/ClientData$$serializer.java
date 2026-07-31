package org.wikimedia.testkitchen.context;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ClientData$$serializer implements GeneratedSerializer {
    public static final ClientData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ClientData$$serializer clientData$$serializer = new ClientData$$serializer();
        INSTANCE = clientData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.context.ClientData", clientData$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("agent", true);
        pluginGeneratedSerialDescriptor.addElement("page", true);
        pluginGeneratedSerialDescriptor.addElement("mediawiki", true);
        pluginGeneratedSerialDescriptor.addElement("performer", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(AgentData$$serializer.INSTANCE), UnsignedKt.getNullable(PageData$$serializer.INSTANCE), UnsignedKt.getNullable(MediawikiData$$serializer.INSTANCE), UnsignedKt.getNullable(PerformerData$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        AgentData agentData = null;
        PageData pageData = null;
        MediawikiData mediawikiData = null;
        PerformerData performerData = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                agentData = (AgentData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, AgentData$$serializer.INSTANCE, agentData);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                pageData = (PageData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, PageData$$serializer.INSTANCE, pageData);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                mediawikiData = (MediawikiData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, MediawikiData$$serializer.INSTANCE, mediawikiData);
                i |= 4;
            } else {
                if (decodeElementIndex != 3) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                performerData = (PerformerData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, PerformerData$$serializer.INSTANCE, performerData);
                i |= 8;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ClientData(i, agentData, pageData, mediawikiData, performerData);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ClientData clientData = (ClientData) obj;
        clientData.getClass();
        PerformerData performerData = clientData.performerData;
        MediawikiData mediawikiData = clientData.mediawikiData;
        PageData pageData = clientData.pageData;
        AgentData agentData = clientData.agentData;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, AgentData$$serializer.INSTANCE, agentData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, PageData$$serializer.INSTANCE, pageData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || mediawikiData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, MediawikiData$$serializer.INSTANCE, mediawikiData);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, PerformerData$$serializer.INSTANCE, performerData);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
