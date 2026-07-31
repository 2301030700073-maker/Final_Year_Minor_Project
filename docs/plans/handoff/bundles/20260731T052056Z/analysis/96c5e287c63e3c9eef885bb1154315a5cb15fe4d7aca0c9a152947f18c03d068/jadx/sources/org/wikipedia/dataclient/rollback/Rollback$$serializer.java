package org.wikipedia.dataclient.rollback;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Rollback$$serializer implements GeneratedSerializer {
    public static final Rollback$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Rollback$$serializer rollback$$serializer = new Rollback$$serializer();
        INSTANCE = rollback$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.rollback.Rollback", rollback$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("errors", true);
        pluginGeneratedSerialDescriptor.addElement("servedby", true);
        pluginGeneratedSerialDescriptor.addElement("title", false);
        pluginGeneratedSerialDescriptor.addElement("pageid", true);
        pluginGeneratedSerialDescriptor.addElement("summary", true);
        pluginGeneratedSerialDescriptor.addElement("revid", true);
        pluginGeneratedSerialDescriptor.addElement("old_revid", true);
        pluginGeneratedSerialDescriptor.addElement("last_revid", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) Rollback.$childSerializers[0].getValue());
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable2 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable3 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable4 = UnsignedKt.getNullable(stringSerializer);
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, nullable3, IntSerializer.INSTANCE, nullable4, longSerializer, longSerializer, longSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Rollback.$childSerializers;
        int i = 0;
        int i2 = 0;
        List list = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                    i |= 1;
                    break;
                case 1:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                    i |= 2;
                    break;
                case 2:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
                    i |= 4;
                    break;
                case 3:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str3);
                    i |= 16;
                    break;
                case 5:
                    j = beginStructure.decodeLongElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    j3 = beginStructure.decodeLongElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Rollback(i, list, str, str2, i2, str3, j, j2, j3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Rollback rollback = (Rollback) obj;
        rollback.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwResponse.write$Self(rollback, beginStructure, serialDescriptor);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        String str = rollback.title;
        long j = rollback.lastRevision;
        long j2 = rollback.oldRevision;
        long j3 = rollback.revision;
        String str2 = rollback.summary;
        int i = rollback.pageId;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(3, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, stringSerializer, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j3 != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 5, j3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j2 != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 6, j2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 7, j);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
