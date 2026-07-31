package org.wikipedia.analytics.eventplatform;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer implements GeneratedSerializer {
    public static final AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer = new AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer();
        INSTANCE = appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/mobile_apps/android_app_appearance_settings_interaction/1.0.0", appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("is_anon", true);
        pluginGeneratedSerialDescriptor.addElement("app_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        pluginGeneratedSerialDescriptor.addElement("current_value", false);
        pluginGeneratedSerialDescriptor.addElement("new_value", false);
        pluginGeneratedSerialDescriptor.addElement("source", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, stringSerializer, BooleanSerializer.INSTANCE, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        Event.Meta meta = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
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
                    str = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl(i, meta, str, z2, str2, str3, str4, str5, str6, str7);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl = (AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl) obj;
        appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MobileAppsEvent.write$Self((MobileAppsEvent) appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl, beginStructure, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 5, appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.action);
        beginStructure.encodeStringElement(serialDescriptor, 6, appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.currentValue);
        beginStructure.encodeStringElement(serialDescriptor, 7, appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.newValue);
        beginStructure.encodeStringElement(serialDescriptor, 8, appearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.source);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
