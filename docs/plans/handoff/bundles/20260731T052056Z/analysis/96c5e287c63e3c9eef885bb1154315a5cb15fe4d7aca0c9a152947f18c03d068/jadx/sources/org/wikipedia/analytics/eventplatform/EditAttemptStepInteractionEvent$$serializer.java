package org.wikipedia.analytics.eventplatform;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditAttemptStepInteractionEvent$$serializer implements GeneratedSerializer {
    public static final EditAttemptStepInteractionEvent$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        EditAttemptStepInteractionEvent$$serializer editAttemptStepInteractionEvent$$serializer = new EditAttemptStepInteractionEvent$$serializer();
        INSTANCE = editAttemptStepInteractionEvent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.analytics.eventplatform.EditAttemptStepInteractionEvent", editAttemptStepInteractionEvent$$serializer, 15);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", false);
        pluginGeneratedSerialDescriptor.addElement("editing_session_id", false);
        pluginGeneratedSerialDescriptor.addElement("editor_interface", false);
        pluginGeneratedSerialDescriptor.addElement("integration", false);
        pluginGeneratedSerialDescriptor.addElement("mw_version", false);
        pluginGeneratedSerialDescriptor.addElement("platform", false);
        pluginGeneratedSerialDescriptor.addElement("user_editcount", false);
        pluginGeneratedSerialDescriptor.addElement("user_id", false);
        pluginGeneratedSerialDescriptor.addElement("is_anon", false);
        pluginGeneratedSerialDescriptor.addElement("user_is_temp", false);
        pluginGeneratedSerialDescriptor.addElement("version", false);
        pluginGeneratedSerialDescriptor.addElement("page_title", false);
        pluginGeneratedSerialDescriptor.addElement("page_ns", false);
        pluginGeneratedSerialDescriptor.addElement("wiki", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, intSerializer, intSerializer, booleanSerializer, booleanSerializer, intSerializer, stringSerializer, intSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
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
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                case 9:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 9);
                    i |= 512;
                    break;
                case 10:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 10);
                    i |= 1024;
                    break;
                case 11:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 11);
                    i |= 2048;
                    break;
                case 12:
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 12);
                    i |= 4096;
                    break;
                case IMAGE_VALUE:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 13);
                    i |= 8192;
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    str9 = beginStructure.decodeStringElement(serialDescriptor, 14);
                    i |= 16384;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new EditAttemptStepInteractionEvent(i, str, str2, str3, str4, str5, str6, str7, i2, i3, z2, z3, i4, str8, i5, str9);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        EditAttemptStepInteractionEvent editAttemptStepInteractionEvent = (EditAttemptStepInteractionEvent) obj;
        editAttemptStepInteractionEvent.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 0, editAttemptStepInteractionEvent.action);
        beginStructure.encodeStringElement(serialDescriptor, 1, editAttemptStepInteractionEvent.app_install_id);
        beginStructure.encodeStringElement(serialDescriptor, 2, editAttemptStepInteractionEvent.editing_session_id);
        beginStructure.encodeStringElement(serialDescriptor, 3, editAttemptStepInteractionEvent.editor_interface);
        beginStructure.encodeStringElement(serialDescriptor, 4, editAttemptStepInteractionEvent.integration);
        beginStructure.encodeStringElement(serialDescriptor, 5, editAttemptStepInteractionEvent.mw_version);
        beginStructure.encodeStringElement(serialDescriptor, 6, editAttemptStepInteractionEvent.platform);
        beginStructure.encodeIntElement(7, editAttemptStepInteractionEvent.user_editcount, serialDescriptor);
        beginStructure.encodeIntElement(8, editAttemptStepInteractionEvent.user_id, serialDescriptor);
        beginStructure.encodeBooleanElement(serialDescriptor, 9, editAttemptStepInteractionEvent.is_anon);
        beginStructure.encodeBooleanElement(serialDescriptor, 10, editAttemptStepInteractionEvent.user_is_temp);
        beginStructure.encodeIntElement(11, editAttemptStepInteractionEvent.version, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 12, editAttemptStepInteractionEvent.page_title);
        beginStructure.encodeIntElement(13, editAttemptStepInteractionEvent.page_ns, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 14, editAttemptStepInteractionEvent.wiki);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
