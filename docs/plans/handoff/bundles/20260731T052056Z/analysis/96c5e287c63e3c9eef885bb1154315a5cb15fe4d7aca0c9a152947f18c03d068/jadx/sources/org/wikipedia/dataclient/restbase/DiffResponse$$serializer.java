package org.wikipedia.dataclient.restbase;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
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
import org.wikipedia.dataclient.restbase.DiffResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiffResponse$$serializer implements GeneratedSerializer {
    public static final DiffResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DiffResponse$$serializer diffResponse$$serializer = new DiffResponse$$serializer();
        INSTANCE = diffResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.restbase.DiffResponse", diffResponse$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("from", true);
        pluginGeneratedSerialDescriptor.addElement("to", true);
        pluginGeneratedSerialDescriptor.addElement("diff", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = DiffResponse.$childSerializers;
        DiffResponse$DiffRevision$$serializer diffResponse$DiffRevision$$serializer = DiffResponse$DiffRevision$$serializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(diffResponse$DiffRevision$$serializer), UnsignedKt.getNullable(diffResponse$DiffRevision$$serializer), lazyArr[2].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DiffResponse.$childSerializers;
        boolean z = true;
        int i = 0;
        DiffResponse.DiffRevision diffRevision = null;
        DiffResponse.DiffRevision diffRevision2 = null;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                diffRevision = (DiffResponse.DiffRevision) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, DiffResponse$DiffRevision$$serializer.INSTANCE, diffRevision);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                diffRevision2 = (DiffResponse.DiffRevision) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, DiffResponse$DiffRevision$$serializer.INSTANCE, diffRevision2);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DiffResponse(i, diffRevision, diffRevision2, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DiffResponse diffResponse = (DiffResponse) obj;
        diffResponse.getClass();
        List list = diffResponse.diff;
        DiffResponse.DiffRevision diffRevision = diffResponse.to;
        DiffResponse.DiffRevision diffRevision2 = diffResponse.from;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DiffResponse.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || diffRevision2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, DiffResponse$DiffRevision$$serializer.INSTANCE, diffRevision2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || diffRevision != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, DiffResponse$DiffRevision$$serializer.INSTANCE, diffRevision);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, EmptyList.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
