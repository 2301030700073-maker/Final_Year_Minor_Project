package org.wikipedia.dataclient.mwapi;

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
import org.wikipedia.dataclient.mwapi.MwQueryResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResult$OresResult$$serializer implements GeneratedSerializer {
    public static final MwQueryResult$OresResult$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResult$OresResult$$serializer mwQueryResult$OresResult$$serializer = new MwQueryResult$OresResult$$serializer();
        INSTANCE = mwQueryResult$OresResult$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResult.OresResult", mwQueryResult$OresResult$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("damaging", true);
        pluginGeneratedSerialDescriptor.addElement("goodfaith", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        MwQueryResult$OresItem$$serializer mwQueryResult$OresItem$$serializer = MwQueryResult$OresItem$$serializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(mwQueryResult$OresItem$$serializer), UnsignedKt.getNullable(mwQueryResult$OresItem$$serializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        MwQueryResult.OresItem oresItem = null;
        MwQueryResult.OresItem oresItem2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                oresItem = (MwQueryResult.OresItem) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, MwQueryResult$OresItem$$serializer.INSTANCE, oresItem);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                oresItem2 = (MwQueryResult.OresItem) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, MwQueryResult$OresItem$$serializer.INSTANCE, oresItem2);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryResult.OresResult(i, oresItem, oresItem2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        MwQueryResult.OresResult oresResult = (MwQueryResult.OresResult) obj;
        oresResult.getClass();
        MwQueryResult.OresItem oresItem = oresResult.goodfaith;
        MwQueryResult.OresItem oresItem2 = oresResult.damaging;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || oresItem2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, MwQueryResult$OresItem$$serializer.INSTANCE, oresItem2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || oresItem != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, MwQueryResult$OresItem$$serializer.INSTANCE, oresItem);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
