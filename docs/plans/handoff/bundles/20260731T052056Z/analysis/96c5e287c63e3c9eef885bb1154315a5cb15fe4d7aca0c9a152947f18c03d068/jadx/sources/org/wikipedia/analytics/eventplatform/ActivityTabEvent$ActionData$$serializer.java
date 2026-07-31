package org.wikipedia.analytics.eventplatform;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabEvent$ActionData$$serializer implements GeneratedSerializer {
    public static final ActivityTabEvent$ActionData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ActivityTabEvent$ActionData$$serializer activityTabEvent$ActionData$$serializer = new ActivityTabEvent$ActionData$$serializer();
        INSTANCE = activityTabEvent$ActionData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.analytics.eventplatform.ActivityTabEvent.ActionData", activityTabEvent$ActionData$$serializer, 13);
        pluginGeneratedSerialDescriptor.addElement("group", true);
        pluginGeneratedSerialDescriptor.addElement("state", true);
        pluginGeneratedSerialDescriptor.addElement("impact", true);
        pluginGeneratedSerialDescriptor.addElement("games", true);
        pluginGeneratedSerialDescriptor.addElement("donations", true);
        pluginGeneratedSerialDescriptor.addElement("timeline", true);
        pluginGeneratedSerialDescriptor.addElement("all", true);
        pluginGeneratedSerialDescriptor.addElement("time_spent", true);
        pluginGeneratedSerialDescriptor.addElement("reading_insight", true);
        pluginGeneratedSerialDescriptor.addElement("editing_insight", true);
        pluginGeneratedSerialDescriptor.addElement("edit_count", true);
        pluginGeneratedSerialDescriptor.addElement("feedback_select", true);
        pluginGeneratedSerialDescriptor.addElement("feedback_text", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable2 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable3 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable4 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable5 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable6 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable7 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable8 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable9 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable10 = UnsignedKt.getNullable(stringSerializer);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, nullable3, nullable4, nullable5, nullable6, nullable7, nullable8, nullable9, nullable10, UnsignedKt.getNullable(intSerializer), UnsignedKt.getNullable(intSerializer), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        String str;
        String str2;
        Integer num;
        Integer num2;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Integer num3 = null;
        Integer num4 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i = 0;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    num = num3;
                    num2 = num4;
                    z = false;
                    num4 = num2;
                    num3 = num;
                case 0:
                    num = num3;
                    num2 = num4;
                    str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str6);
                    i |= 1;
                    num4 = num2;
                    num3 = num;
                case 1:
                    num = num3;
                    str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str7);
                    i |= 2;
                    str6 = str6;
                    num3 = num;
                case 2:
                    str = str6;
                    str2 = str7;
                    str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str8);
                    i |= 4;
                    str6 = str;
                    str7 = str2;
                case 3:
                    str = str6;
                    str2 = str7;
                    str9 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str9);
                    i |= 8;
                    str6 = str;
                    str7 = str2;
                case 4:
                    str = str6;
                    str2 = str7;
                    str10 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str10);
                    i |= 16;
                    str6 = str;
                    str7 = str2;
                case 5:
                    str = str6;
                    str2 = str7;
                    str11 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str11);
                    i |= 32;
                    str6 = str;
                    str7 = str2;
                case 6:
                    str = str6;
                    str2 = str7;
                    str12 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str12);
                    i |= 64;
                    str6 = str;
                    str7 = str2;
                case 7:
                    str = str6;
                    str2 = str7;
                    str13 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str13);
                    i |= 128;
                    str6 = str;
                    str7 = str2;
                case 8:
                    str = str6;
                    str2 = str7;
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str5);
                    i |= 256;
                    str6 = str;
                    str7 = str2;
                case 9:
                    str = str6;
                    str2 = str7;
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str3);
                    i |= 512;
                    str6 = str;
                    str7 = str2;
                case 10:
                    str = str6;
                    str2 = str7;
                    num4 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, IntSerializer.INSTANCE, num4);
                    i |= 1024;
                    str6 = str;
                    str7 = str2;
                case 11:
                    str = str6;
                    str2 = str7;
                    num3 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, IntSerializer.INSTANCE, num3);
                    i |= 2048;
                    str6 = str;
                    str7 = str2;
                case 12:
                    str = str6;
                    str2 = str7;
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, StringSerializer.INSTANCE, str4);
                    i |= 4096;
                    str6 = str;
                    str7 = str2;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        Integer num5 = num4;
        beginStructure.endStructure(serialDescriptor);
        return new ActivityTabEvent$ActionData(i, str6, str7, str8, str9, str10, str11, str12, str13, str5, str3, num5, num3, str4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        String str;
        ActivityTabEvent$ActionData activityTabEvent$ActionData = (ActivityTabEvent$ActionData) obj;
        activityTabEvent$ActionData.getClass();
        String str2 = activityTabEvent$ActionData.feedbackText;
        Integer num = activityTabEvent$ActionData.feedbackSelect;
        Integer num2 = activityTabEvent$ActionData.editCount;
        String str3 = activityTabEvent$ActionData.editingInsight;
        String str4 = activityTabEvent$ActionData.readingInsight;
        String str5 = activityTabEvent$ActionData.timeSpent;
        String str6 = activityTabEvent$ActionData.all;
        String str7 = activityTabEvent$ActionData.timeline;
        String str8 = activityTabEvent$ActionData.donations;
        String str9 = activityTabEvent$ActionData.games;
        String str10 = activityTabEvent$ActionData.impact;
        String str11 = activityTabEvent$ActionData.state;
        String str12 = activityTabEvent$ActionData.group;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (!beginStructure.shouldEncodeElementDefault(serialDescriptor) && str12 == null) {
            str = str2;
        } else {
            str = str2;
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str12);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str11 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str11);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str10 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str10);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str9 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str9);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str8 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str8);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str7 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str7);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str6 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str6);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str5 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || num2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 10, IntSerializer.INSTANCE, num2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || num != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 11, IntSerializer.INSTANCE, num);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 12, StringSerializer.INSTANCE, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
