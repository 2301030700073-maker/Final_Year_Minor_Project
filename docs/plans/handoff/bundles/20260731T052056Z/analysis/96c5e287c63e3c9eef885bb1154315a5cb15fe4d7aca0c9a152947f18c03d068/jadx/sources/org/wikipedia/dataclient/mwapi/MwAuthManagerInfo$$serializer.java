package org.wikipedia.dataclient.mwapi;

import java.util.List;
import kotlin.Lazy;
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
public final /* synthetic */ class MwAuthManagerInfo$$serializer implements GeneratedSerializer {
    public static final MwAuthManagerInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwAuthManagerInfo$$serializer mwAuthManagerInfo$$serializer = new MwAuthManagerInfo$$serializer();
        INSTANCE = mwAuthManagerInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwAuthManagerInfo", mwAuthManagerInfo$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("requests", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) MwAuthManagerInfo.$childSerializers[0].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwAuthManagerInfo.$childSerializers;
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
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwAuthManagerInfo(list, i);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        MwAuthManagerInfo mwAuthManagerInfo = (MwAuthManagerInfo) obj;
        mwAuthManagerInfo.getClass();
        List list = mwAuthManagerInfo.requests;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwAuthManagerInfo.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
