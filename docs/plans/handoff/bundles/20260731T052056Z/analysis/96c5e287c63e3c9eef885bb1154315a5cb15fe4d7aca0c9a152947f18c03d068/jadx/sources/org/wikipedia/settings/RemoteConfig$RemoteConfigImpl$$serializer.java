package org.wikipedia.settings;

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
public final /* synthetic */ class RemoteConfig$RemoteConfigImpl$$serializer implements GeneratedSerializer {
    public static final RemoteConfig$RemoteConfigImpl$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        RemoteConfig$RemoteConfigImpl$$serializer remoteConfig$RemoteConfigImpl$$serializer = new RemoteConfig$RemoteConfigImpl$$serializer();
        INSTANCE = remoteConfig$RemoteConfigImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.settings.RemoteConfig.RemoteConfigImpl", remoteConfig$RemoteConfigImpl$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("commonv1", true);
        pluginGeneratedSerialDescriptor.addElement("androidv1", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(RemoteConfig$RemoteConfigCommonV1$$serializer.INSTANCE), UnsignedKt.getNullable(RemoteConfig$RemoteConfigAndroidV1$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        RemoteConfig$RemoteConfigCommonV1 remoteConfig$RemoteConfigCommonV1 = null;
        RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                remoteConfig$RemoteConfigCommonV1 = (RemoteConfig$RemoteConfigCommonV1) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, RemoteConfig$RemoteConfigCommonV1$$serializer.INSTANCE, remoteConfig$RemoteConfigCommonV1);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                remoteConfig$RemoteConfigAndroidV1 = (RemoteConfig$RemoteConfigAndroidV1) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, RemoteConfig$RemoteConfigAndroidV1$$serializer.INSTANCE, remoteConfig$RemoteConfigAndroidV1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new RemoteConfig$RemoteConfigImpl(i, remoteConfig$RemoteConfigCommonV1, remoteConfig$RemoteConfigAndroidV1);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        RemoteConfig$RemoteConfigImpl remoteConfig$RemoteConfigImpl = (RemoteConfig$RemoteConfigImpl) obj;
        remoteConfig$RemoteConfigImpl.getClass();
        RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = remoteConfig$RemoteConfigImpl.androidv1;
        RemoteConfig$RemoteConfigCommonV1 remoteConfig$RemoteConfigCommonV1 = remoteConfig$RemoteConfigImpl.commonv1;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || remoteConfig$RemoteConfigCommonV1 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, RemoteConfig$RemoteConfigCommonV1$$serializer.INSTANCE, remoteConfig$RemoteConfigCommonV1);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || remoteConfig$RemoteConfigAndroidV1 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, RemoteConfig$RemoteConfigAndroidV1$$serializer.INSTANCE, remoteConfig$RemoteConfigAndroidV1);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
