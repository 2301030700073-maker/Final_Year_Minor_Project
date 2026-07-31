package org.wikipedia.settings;

import java.util.List;
import kotlin.Lazy;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
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
public final /* synthetic */ class RemoteConfig$RemoteConfigCommonV1$$serializer implements GeneratedSerializer {
    public static final RemoteConfig$RemoteConfigCommonV1$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        RemoteConfig$RemoteConfigCommonV1$$serializer remoteConfig$RemoteConfigCommonV1$$serializer = new RemoteConfig$RemoteConfigCommonV1$$serializer();
        INSTANCE = remoteConfig$RemoteConfigCommonV1$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.settings.RemoteConfig.RemoteConfigCommonV1", remoteConfig$RemoteConfigCommonV1$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("yir", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{RemoteConfig$RemoteConfigCommonV1.$childSerializers[0].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = RemoteConfig$RemoteConfigCommonV1.$childSerializers;
        boolean z = true;
        int i = 0;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new RemoteConfig$RemoteConfigCommonV1(list, i);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        RemoteConfig$RemoteConfigCommonV1 remoteConfig$RemoteConfigCommonV1 = (RemoteConfig$RemoteConfigCommonV1) obj;
        remoteConfig$RemoteConfigCommonV1.getClass();
        List list = remoteConfig$RemoteConfigCommonV1.yir;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = RemoteConfig$RemoteConfigCommonV1.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, EmptyList.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
