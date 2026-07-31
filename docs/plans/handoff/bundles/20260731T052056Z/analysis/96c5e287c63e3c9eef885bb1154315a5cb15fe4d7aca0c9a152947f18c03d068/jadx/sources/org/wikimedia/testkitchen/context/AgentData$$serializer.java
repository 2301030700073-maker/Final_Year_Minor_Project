package org.wikimedia.testkitchen.context;

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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AgentData$$serializer implements GeneratedSerializer {
    public static final AgentData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AgentData$$serializer agentData$$serializer = new AgentData$$serializer();
        INSTANCE = agentData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.context.AgentData", agentData$$serializer, 10);
        pluginGeneratedSerialDescriptor.addElement("app_flavor", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_theme", true);
        pluginGeneratedSerialDescriptor.addElement("app_version", true);
        pluginGeneratedSerialDescriptor.addElement("app_version_name", true);
        pluginGeneratedSerialDescriptor.addElement("client_platform", true);
        pluginGeneratedSerialDescriptor.addElement("client_platform_family", true);
        pluginGeneratedSerialDescriptor.addElement("device_family", true);
        pluginGeneratedSerialDescriptor.addElement("device_language", true);
        pluginGeneratedSerialDescriptor.addElement("release_status", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(IntSerializer.INSTANCE), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer)};
    }

    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Integer, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        ?? r1;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        String str = null;
        boolean z = true;
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Integer num = null;
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
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str2);
                    i |= 1;
                    break;
                case 1:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str3);
                    i |= 2;
                    break;
                case 2:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str4);
                    i |= 4;
                    break;
                case 3:
                    num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, IntSerializer.INSTANCE, num);
                    i |= 8;
                    break;
                case 4:
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str5);
                    i |= 16;
                    break;
                case 5:
                    str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str6);
                    i |= 32;
                    break;
                case 6:
                    str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str7);
                    i |= 64;
                    break;
                case 7:
                    str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str8);
                    i |= 128;
                    break;
                case 8:
                    str9 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str9);
                    i |= 256;
                    break;
                case 9:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str);
                    i |= 512;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        AgentData agentData = new AgentData();
        if ((i & 1) == 0) {
            r1 = 0;
            agentData.appFlavor = null;
        } else {
            r1 = 0;
            agentData.appFlavor = str2;
        }
        if ((i & 2) == 0) {
            agentData.appInstallId = r1;
        } else {
            agentData.appInstallId = str3;
        }
        if ((i & 4) == 0) {
            agentData.appTheme = r1;
        } else {
            agentData.appTheme = str4;
        }
        if ((i & 8) == 0) {
            agentData.appVersion = r1;
        } else {
            agentData.appVersion = num;
        }
        if ((i & 16) == 0) {
            agentData.appVersionName = r1;
        } else {
            agentData.appVersionName = str5;
        }
        if ((i & 32) == 0) {
            agentData.clientPlatform = r1;
        } else {
            agentData.clientPlatform = str6;
        }
        if ((i & 64) == 0) {
            agentData.clientPlatformFamily = r1;
        } else {
            agentData.clientPlatformFamily = str7;
        }
        if ((i & 128) == 0) {
            agentData.deviceFamily = r1;
        } else {
            agentData.deviceFamily = str8;
        }
        if ((i & 256) == 0) {
            agentData.deviceLanguage = r1;
        } else {
            agentData.deviceLanguage = str9;
        }
        if ((i & 512) == 0) {
            agentData.releaseStatus = r1;
            return agentData;
        }
        agentData.releaseStatus = str;
        return agentData;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        AgentData agentData = (AgentData) obj;
        agentData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.appFlavor != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, agentData.appFlavor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.appInstallId != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, agentData.appInstallId);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.appTheme != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, agentData.appTheme);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.appVersion != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, IntSerializer.INSTANCE, agentData.appVersion);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.appVersionName != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, agentData.appVersionName);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.clientPlatform != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, agentData.clientPlatform);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.clientPlatformFamily != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, agentData.clientPlatformFamily);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.deviceFamily != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, agentData.deviceFamily);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.deviceLanguage != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, agentData.deviceLanguage);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || agentData.releaseStatus != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, agentData.releaseStatus);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
