package org.wikipedia.analytics.eventplatform;

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
public final /* synthetic */ class EditAttemptStepEvent$$serializer implements GeneratedSerializer {
    public static final EditAttemptStepEvent$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        EditAttemptStepEvent$$serializer editAttemptStepEvent$$serializer = new EditAttemptStepEvent$$serializer();
        INSTANCE = editAttemptStepEvent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/legacy/editattemptstep/2.0.3", editAttemptStepEvent$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("event", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, StringSerializer.INSTANCE, EditAttemptStepInteractionEvent$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        Event.Meta meta = null;
        String str = null;
        EditAttemptStepInteractionEvent editAttemptStepInteractionEvent = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                meta = (Event.Meta) beginStructure.decodeSerializableElement(serialDescriptor, 0, Event$Meta$$serializer.INSTANCE, meta);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                editAttemptStepInteractionEvent = (EditAttemptStepInteractionEvent) beginStructure.decodeSerializableElement(serialDescriptor, 2, EditAttemptStepInteractionEvent$$serializer.INSTANCE, editAttemptStepInteractionEvent);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new EditAttemptStepEvent(i, meta, str, editAttemptStepInteractionEvent);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        EditAttemptStepEvent editAttemptStepEvent = (EditAttemptStepEvent) obj;
        editAttemptStepEvent.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Event.write$Self(editAttemptStepEvent, beginStructure, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 1, editAttemptStepEvent.dt);
        beginStructure.encodeSerializableElement(serialDescriptor, 2, EditAttemptStepInteractionEvent$$serializer.INSTANCE, editAttemptStepEvent.event);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
