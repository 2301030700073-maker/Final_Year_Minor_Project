package org.wikipedia.analytics.eventplatform;

import java.util.List;
import kotlin.Lazy;
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
import org.wikipedia.analytics.SessionData;
import org.wikipedia.analytics.SessionData$$serializer;
import org.wikipedia.analytics.eventplatform.AppSessionEvent;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppSessionEvent$AppSessionEventImpl$$serializer implements GeneratedSerializer {
    public static final AppSessionEvent$AppSessionEventImpl$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AppSessionEvent$AppSessionEventImpl$$serializer appSessionEvent$AppSessionEventImpl$$serializer = new AppSessionEvent$AppSessionEventImpl$$serializer();
        INSTANCE = appSessionEvent$AppSessionEventImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/mobile_apps/app_session/1.1.0", appSessionEvent$AppSessionEventImpl$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("is_anon", true);
        pluginGeneratedSerialDescriptor.addElement("app_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("is_temp", true);
        pluginGeneratedSerialDescriptor.addElement("length_ms", false);
        pluginGeneratedSerialDescriptor.addElement("session_data", false);
        pluginGeneratedSerialDescriptor.addElement("languages", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = AppSessionEvent.AppSessionEventImpl.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, stringSerializer, booleanSerializer, stringSerializer, stringSerializer, booleanSerializer, IntSerializer.INSTANCE, SessionData$$serializer.INSTANCE, lazyArr[8].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = AppSessionEvent.AppSessionEventImpl.$childSerializers;
        List list = null;
        boolean z = true;
        SessionData sessionData = null;
        int i = 0;
        Event.Meta meta = null;
        String str = null;
        boolean z2 = false;
        String str2 = null;
        String str3 = null;
        boolean z3 = false;
        int i2 = 0;
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
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    sessionData = (SessionData) beginStructure.decodeSerializableElement(serialDescriptor, 7, SessionData$$serializer.INSTANCE, sessionData);
                    i |= 128;
                    break;
                case 8:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 8, (KSerializer) lazyArr[8].getValue(), list);
                    i |= 256;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new AppSessionEvent.AppSessionEventImpl(i, meta, str, z2, str2, str3, z3, i2, sessionData, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        AppSessionEvent.AppSessionEventImpl appSessionEventImpl = (AppSessionEvent.AppSessionEventImpl) obj;
        appSessionEventImpl.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MobileAppsEventWithTemp.write$Self((MobileAppsEventWithTemp) appSessionEventImpl, beginStructure, serialDescriptor);
        Lazy[] lazyArr = AppSessionEvent.AppSessionEventImpl.$childSerializers;
        beginStructure.encodeIntElement(6, appSessionEventImpl.length, serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 7, SessionData$$serializer.INSTANCE, appSessionEventImpl.sessionData);
        beginStructure.encodeSerializableElement(serialDescriptor, 8, (KSerializer) lazyArr[8].getValue(), appSessionEventImpl.languages);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
