package org.wikipedia.dataclient.mwapi;

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
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResponse$$serializer implements GeneratedSerializer {
    public static final MwQueryResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResponse$$serializer mwQueryResponse$$serializer = new MwQueryResponse$$serializer();
        INSTANCE = mwQueryResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResponse", mwQueryResponse$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("errors", true);
        pluginGeneratedSerialDescriptor.addElement("servedby", true);
        pluginGeneratedSerialDescriptor.addElement("batchcomplete", true);
        pluginGeneratedSerialDescriptor.addElement("continue", true);
        pluginGeneratedSerialDescriptor.addElement("query", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) MwQueryResponse.$childSerializers[0].getValue()), UnsignedKt.getNullable(StringSerializer.INSTANCE), BooleanSerializer.INSTANCE, UnsignedKt.getNullable(MwQueryResponse$Continuation$$serializer.INSTANCE), UnsignedKt.getNullable(MwQueryResult$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwQueryResponse.$childSerializers;
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        List list = null;
        String str = null;
        MwQueryResponse.Continuation continuation = null;
        MwQueryResult mwQueryResult = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                z2 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                continuation = (MwQueryResponse.Continuation) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, MwQueryResponse$Continuation$$serializer.INSTANCE, continuation);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                mwQueryResult = (MwQueryResult) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, MwQueryResult$$serializer.INSTANCE, mwQueryResult);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryResponse(i, list, str, z2, continuation, mwQueryResult);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        MwQueryResponse mwQueryResponse = (MwQueryResponse) obj;
        mwQueryResponse.getClass();
        MwQueryResult mwQueryResult = mwQueryResponse.query;
        MwQueryResponse.Continuation continuation = mwQueryResponse.continuation;
        boolean z = mwQueryResponse.batchcomplete;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwResponse.write$Self(mwQueryResponse, beginStructure, serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 2, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || continuation != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, MwQueryResponse$Continuation$$serializer.INSTANCE, continuation);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || mwQueryResult != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, MwQueryResult$$serializer.INSTANCE, mwQueryResult);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
