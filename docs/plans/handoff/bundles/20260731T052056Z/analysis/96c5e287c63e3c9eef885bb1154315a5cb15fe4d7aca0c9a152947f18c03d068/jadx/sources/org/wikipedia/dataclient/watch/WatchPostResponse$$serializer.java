package org.wikipedia.dataclient.watch;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
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
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryPage$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WatchPostResponse$$serializer implements GeneratedSerializer {
    public static final WatchPostResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        WatchPostResponse$$serializer watchPostResponse$$serializer = new WatchPostResponse$$serializer();
        INSTANCE = watchPostResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.watch.WatchPostResponse", watchPostResponse$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("errors", true);
        pluginGeneratedSerialDescriptor.addElement("servedby", true);
        pluginGeneratedSerialDescriptor.addElement("pageInfo", true);
        pluginGeneratedSerialDescriptor.addElement("options", true);
        pluginGeneratedSerialDescriptor.addElement("success", true);
        pluginGeneratedSerialDescriptor.addElement("batchcomplete", true);
        pluginGeneratedSerialDescriptor.addElement("watch", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = WatchPostResponse.$childSerializers;
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) lazyArr[0].getValue());
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{nullable, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(MwQueryPage$$serializer.INSTANCE), UnsignedKt.getNullable(stringSerializer), IntSerializer.INSTANCE, UnsignedKt.getNullable(BooleanSerializer.INSTANCE), UnsignedKt.getNullable((KSerializer) lazyArr[6].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = WatchPostResponse.$childSerializers;
        Object obj = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        List list = null;
        String str = null;
        MwQueryPage mwQueryPage = null;
        String str2 = null;
        Boolean bool = null;
        List list2 = null;
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
                    mwQueryPage = (MwQueryPage) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, MwQueryPage$$serializer.INSTANCE, mwQueryPage);
                    i |= 4;
                    break;
                case 3:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str2);
                    i |= 8;
                    break;
                case 4:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, BooleanSerializer.INSTANCE, bool);
                    i |= 32;
                    break;
                case 6:
                    list2 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), list2);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new WatchPostResponse(i, list, str, mwQueryPage, str2, i2, bool, list2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        WatchPostResponse watchPostResponse = (WatchPostResponse) obj;
        watchPostResponse.getClass();
        Boolean bool = watchPostResponse.batchcomplete;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwPostResponse.write$Self((MwPostResponse) watchPostResponse, beginStructure, serialDescriptor);
        Lazy[] lazyArr = WatchPostResponse.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || bool != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, BooleanSerializer.INSTANCE, bool);
        }
        beginStructure.shouldEncodeElementDefault(serialDescriptor);
        KSerializer kSerializer = (KSerializer) lazyArr[6].getValue();
        Object obj2 = watchPostResponse.watch;
        if (obj2 == null) {
            obj2 = EmptyList.INSTANCE;
        }
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, kSerializer, obj2);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
