package org.wikipedia.dataclient.watch;

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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Watch$$serializer implements GeneratedSerializer {
    public static final Watch$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Watch$$serializer watch$$serializer = new Watch$$serializer();
        INSTANCE = watch$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.watch.Watch", watch$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("errors", true);
        pluginGeneratedSerialDescriptor.addElement("servedby", true);
        pluginGeneratedSerialDescriptor.addElement("title", false);
        pluginGeneratedSerialDescriptor.addElement("ns", true);
        pluginGeneratedSerialDescriptor.addElement("pageid", true);
        pluginGeneratedSerialDescriptor.addElement("expiry", true);
        pluginGeneratedSerialDescriptor.addElement("watched", true);
        pluginGeneratedSerialDescriptor.addElement("unwatched", true);
        pluginGeneratedSerialDescriptor.addElement("missing", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) Watch.$childSerializers[0].getValue());
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable2 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable3 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable4 = UnsignedKt.getNullable(stringSerializer);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, nullable3, intSerializer, intSerializer, nullable4, booleanSerializer, booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Watch.$childSerializers;
        Object obj = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        List list = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
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
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str3);
                    i |= 32;
                    break;
                case 6:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 6);
                    i |= 64;
                    continue;
                case 7:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 7);
                    i |= 128;
                    continue;
                case 8:
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 8);
                    i |= 256;
                    continue;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new Watch(i, list, str, str2, i2, i3, str3, z2, z3, z4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Watch watch = (Watch) obj;
        watch.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwResponse.write$Self(watch, beginStructure, serialDescriptor);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        String str = watch.title;
        boolean z = watch.missing;
        boolean z2 = watch.unwatched;
        boolean z3 = watch.watched;
        String str2 = watch.expiry;
        int i = watch.pageid;
        int i2 = watch.ns;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(3, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(4, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, stringSerializer, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z3) {
            beginStructure.encodeBooleanElement(serialDescriptor, 6, z3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z2) {
            beginStructure.encodeBooleanElement(serialDescriptor, 7, z2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 8, z);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
