package org.wikipedia.settings;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RemoteConfig$RemoteConfigAndroidV1$$serializer implements GeneratedSerializer {
    public static final RemoteConfig$RemoteConfigAndroidV1$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        RemoteConfig$RemoteConfigAndroidV1$$serializer remoteConfig$RemoteConfigAndroidV1$$serializer = new RemoteConfig$RemoteConfigAndroidV1$$serializer();
        INSTANCE = remoteConfig$RemoteConfigAndroidV1$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.settings.RemoteConfig.RemoteConfigAndroidV1", remoteConfig$RemoteConfigAndroidV1$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("disableReadingListSync", true);
        pluginGeneratedSerialDescriptor.addElement("hCaptcha", true);
        pluginGeneratedSerialDescriptor.addElement("hybridSearchEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("hybridSearchLanguages", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = RemoteConfig$RemoteConfigAndroidV1.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, UnsignedKt.getNullable(RemoteConfig$RemoteConfigHCaptcha$$serializer.INSTANCE), UnsignedKt.getNullable(booleanSerializer), UnsignedKt.getNullable((KSerializer) lazyArr[3].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = RemoteConfig$RemoteConfigAndroidV1.$childSerializers;
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        RemoteConfig$RemoteConfigHCaptcha remoteConfig$RemoteConfigHCaptcha = null;
        Boolean bool = null;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                z2 = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                remoteConfig$RemoteConfigHCaptcha = (RemoteConfig$RemoteConfigHCaptcha) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, RemoteConfig$RemoteConfigHCaptcha$$serializer.INSTANCE, remoteConfig$RemoteConfigHCaptcha);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, BooleanSerializer.INSTANCE, bool);
                i |= 4;
            } else {
                if (decodeElementIndex != 3) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list);
                i |= 8;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new RemoteConfig$RemoteConfigAndroidV1(i, z2, remoteConfig$RemoteConfigHCaptcha, bool, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = (RemoteConfig$RemoteConfigAndroidV1) obj;
        remoteConfig$RemoteConfigAndroidV1.getClass();
        List list = remoteConfig$RemoteConfigAndroidV1.hybridSearchLanguages;
        Boolean bool = remoteConfig$RemoteConfigAndroidV1.hybridSearchEnabled;
        RemoteConfig$RemoteConfigHCaptcha remoteConfig$RemoteConfigHCaptcha = remoteConfig$RemoteConfigAndroidV1.hCaptcha;
        boolean z = remoteConfig$RemoteConfigAndroidV1.disableReadingListSync;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = RemoteConfig$RemoteConfigAndroidV1.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 0, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || remoteConfig$RemoteConfigHCaptcha != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, RemoteConfig$RemoteConfigHCaptcha$$serializer.INSTANCE, remoteConfig$RemoteConfigHCaptcha);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || bool != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, BooleanSerializer.INSTANCE, bool);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
