package org.wikipedia.dataclient.donate;

import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonationConfig$$serializer implements GeneratedSerializer {
    public static final DonationConfig$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DonationConfig$$serializer donationConfig$$serializer = new DonationConfig$$serializer();
        INSTANCE = donationConfig$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.donate.DonationConfig", donationConfig$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("version", false);
        pluginGeneratedSerialDescriptor.addElement("currencyMinimumDonation", true);
        pluginGeneratedSerialDescriptor.addElement("currencyMaximumDonation", true);
        pluginGeneratedSerialDescriptor.addElement("currencyAmountPresets", true);
        pluginGeneratedSerialDescriptor.addElement("currencyTransactionFees", true);
        pluginGeneratedSerialDescriptor.addElement("countryCodeEmailOptInRequired", true);
        pluginGeneratedSerialDescriptor.addElement("countryCodeGooglePayEnabled", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = DonationConfig.$childSerializers;
        return new KSerializer[]{IntSerializer.INSTANCE, lazyArr[1].getValue(), lazyArr[2].getValue(), lazyArr[3].getValue(), lazyArr[4].getValue(), lazyArr[5].getValue(), lazyArr[6].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DonationConfig.$childSerializers;
        Object obj = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        Map map = null;
        Map map2 = null;
        Map map3 = null;
        Map map4 = null;
        List list = null;
        List list2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    map = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), map);
                    i |= 2;
                    break;
                case 2:
                    map2 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), map2);
                    i |= 4;
                    break;
                case 3:
                    map3 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), map3);
                    i |= 8;
                    break;
                case 4:
                    map4 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), map4);
                    i |= 16;
                    break;
                case 5:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list);
                    i |= 32;
                    break;
                case 6:
                    list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), list2);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new DonationConfig(i, i2, map, map2, map3, map4, list, list2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DonationConfig donationConfig = (DonationConfig) obj;
        donationConfig.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DonationConfig.$childSerializers;
        int i = donationConfig.version;
        List list = donationConfig.countryCodeGooglePayEnabled;
        List list2 = donationConfig.countryCodeEmailOptInRequired;
        Map map = donationConfig.currencyTransactionFees;
        Map map2 = donationConfig.currencyAmountPresets;
        Map map3 = donationConfig.currencyMaximumDonation;
        Map map4 = donationConfig.currencyMinimumDonation;
        beginStructure.encodeIntElement(0, i, serialDescriptor);
        boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (shouldEncodeElementDefault || !Intrinsics.areEqual(map4, emptyMap)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), map4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(map3, emptyMap)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), map3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(map2, emptyMap)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), map2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(map, emptyMap)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), map);
        }
        boolean shouldEncodeElementDefault2 = beginStructure.shouldEncodeElementDefault(serialDescriptor);
        EmptyList emptyList = EmptyList.INSTANCE;
        if (shouldEncodeElementDefault2 || !Intrinsics.areEqual(list2, emptyList)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, emptyList)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
