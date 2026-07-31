package org.wikipedia.analytics.eventplatform;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonorExperienceEvent$DonationRemindersActionData$$serializer implements GeneratedSerializer {
    public static final DonorExperienceEvent$DonationRemindersActionData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DonorExperienceEvent$DonationRemindersActionData$$serializer donorExperienceEvent$DonationRemindersActionData$$serializer = new DonorExperienceEvent$DonationRemindersActionData$$serializer();
        INSTANCE = donorExperienceEvent$DonationRemindersActionData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.analytics.eventplatform.DonorExperienceEvent.DonationRemindersActionData", donorExperienceEvent$DonationRemindersActionData$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("milestone_default", true);
        pluginGeneratedSerialDescriptor.addElement("campaign_id", true);
        pluginGeneratedSerialDescriptor.addElement("read_freq", true);
        pluginGeneratedSerialDescriptor.addElement("donate_amount", true);
        pluginGeneratedSerialDescriptor.addElement("group", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable(BooleanSerializer.INSTANCE);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{nullable, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(IntSerializer.INSTANCE), UnsignedKt.getNullable(FloatSerializer.INSTANCE), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        Boolean bool = null;
        String str = null;
        Integer num = null;
        Float f = null;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, BooleanSerializer.INSTANCE, bool);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, num);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                f = (Float) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, FloatSerializer.INSTANCE, f);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str2);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DonorExperienceEvent$DonationRemindersActionData(i, bool, str, num, f, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DonorExperienceEvent$DonationRemindersActionData donorExperienceEvent$DonationRemindersActionData = (DonorExperienceEvent$DonationRemindersActionData) obj;
        donorExperienceEvent$DonationRemindersActionData.getClass();
        String str = donorExperienceEvent$DonationRemindersActionData.groupAssigned;
        Float f = donorExperienceEvent$DonationRemindersActionData.donateAmount;
        Integer num = donorExperienceEvent$DonationRemindersActionData.articleFrequency;
        String str2 = donorExperienceEvent$DonationRemindersActionData.campaignId;
        Boolean bool = donorExperienceEvent$DonationRemindersActionData.defaultMilestone;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || bool != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, BooleanSerializer.INSTANCE, bool);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || num != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, num);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || f != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, FloatSerializer.INSTANCE, f);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
