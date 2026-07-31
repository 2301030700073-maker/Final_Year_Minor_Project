package org.wikipedia.donate.donationreminder;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DonationReminderConfig$$serializer implements GeneratedSerializer {
    public static final DonationReminderConfig$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DonationReminderConfig$$serializer donationReminderConfig$$serializer = new DonationReminderConfig$$serializer();
        INSTANCE = donationReminderConfig$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.donate.donationreminder.DonationReminderConfig", donationReminderConfig$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("userEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("promptLastSeen", true);
        pluginGeneratedSerialDescriptor.addElement("setupTimestamp", true);
        pluginGeneratedSerialDescriptor.addElement("articleVisit", true);
        pluginGeneratedSerialDescriptor.addElement("articleFrequency", true);
        pluginGeneratedSerialDescriptor.addElement("donateAmount", true);
        pluginGeneratedSerialDescriptor.addElement("isReminderReady", true);
        pluginGeneratedSerialDescriptor.addElement("timesReminderShown", true);
        pluginGeneratedSerialDescriptor.addElement("goalReachedCount", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, longSerializer, longSerializer, intSerializer, intSerializer, FloatSerializer.INSTANCE, booleanSerializer, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i = 0;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        int i5 = 0;
        long j = 0;
        long j2 = 0;
        float f = 0.0f;
        boolean z3 = true;
        while (z3) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z3 = false;
                    break;
                case 0:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    j = beginStructure.decodeLongElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 2);
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
                    f = beginStructure.decodeFloatElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DonationReminderConfig(i, z, j, j2, i2, i3, f, z2, i4, i5);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DonationReminderConfig donationReminderConfig = (DonationReminderConfig) obj;
        donationReminderConfig.getClass();
        int i = donationReminderConfig.goalReachedCount;
        int i2 = donationReminderConfig.timesReminderShown;
        boolean z = donationReminderConfig.isReminderReady;
        float f = donationReminderConfig.donateAmount;
        int i3 = donationReminderConfig.articleFrequency;
        int i4 = donationReminderConfig.articleVisit;
        long j = donationReminderConfig.setupTimestamp;
        long j2 = donationReminderConfig.promptLastSeen;
        boolean z2 = donationReminderConfig.userEnabled;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z2) {
            beginStructure.encodeBooleanElement(serialDescriptor, 0, z2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j2 != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 1, j2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 2, j);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i4 != 0) {
            beginStructure.encodeIntElement(3, i4, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i3 != 0) {
            beginStructure.encodeIntElement(4, i3, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 5, f);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 6, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(7, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(8, i, serialDescriptor);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
