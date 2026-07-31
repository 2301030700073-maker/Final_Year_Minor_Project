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
public final /* synthetic */ class InstallReferrerEvent$$serializer implements GeneratedSerializer {
    public static final InstallReferrerEvent$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        InstallReferrerEvent$$serializer installReferrerEvent$$serializer = new InstallReferrerEvent$$serializer();
        INSTANCE = installReferrerEvent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/mobile_apps/android_install_referrer_event/1.1.0", installReferrerEvent$$serializer, 11);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("is_anon", true);
        pluginGeneratedSerialDescriptor.addElement("app_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("is_temp", true);
        pluginGeneratedSerialDescriptor.addElement("referrer_url", false);
        pluginGeneratedSerialDescriptor.addElement("campaign_id", false);
        pluginGeneratedSerialDescriptor.addElement("utm_medium", false);
        pluginGeneratedSerialDescriptor.addElement("utm_campaign", false);
        pluginGeneratedSerialDescriptor.addElement("utm_source", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, stringSerializer, booleanSerializer, stringSerializer, stringSerializer, booleanSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        Event.Meta meta = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
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
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                case 9:
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 9);
                    i |= 512;
                    break;
                case 10:
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 10);
                    i |= 1024;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new InstallReferrerEvent(i, meta, str, z2, str2, str3, z3, str4, str5, str6, str7, str8);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        InstallReferrerEvent installReferrerEvent = (InstallReferrerEvent) obj;
        installReferrerEvent.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MobileAppsEventWithTemp.write$Self((MobileAppsEventWithTemp) installReferrerEvent, beginStructure, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 6, installReferrerEvent.referrerUrl);
        beginStructure.encodeStringElement(serialDescriptor, 7, installReferrerEvent.campaignId);
        beginStructure.encodeStringElement(serialDescriptor, 8, installReferrerEvent.utfMedium);
        beginStructure.encodeStringElement(serialDescriptor, 9, installReferrerEvent.utfCampaign);
        beginStructure.encodeStringElement(serialDescriptor, 10, installReferrerEvent.utfSource);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
