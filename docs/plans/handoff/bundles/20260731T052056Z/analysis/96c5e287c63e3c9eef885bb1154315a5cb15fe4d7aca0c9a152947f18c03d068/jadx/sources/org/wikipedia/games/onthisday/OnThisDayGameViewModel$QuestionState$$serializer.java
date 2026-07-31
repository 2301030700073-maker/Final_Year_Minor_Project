package org.wikipedia.games.onthisday;

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
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.onthisday.OnThisDay$Event$$serializer;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameViewModel$QuestionState$$serializer implements GeneratedSerializer {
    public static final OnThisDayGameViewModel$QuestionState$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        OnThisDayGameViewModel$QuestionState$$serializer onThisDayGameViewModel$QuestionState$$serializer = new OnThisDayGameViewModel$QuestionState$$serializer();
        INSTANCE = onThisDayGameViewModel$QuestionState$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.games.onthisday.OnThisDayGameViewModel.QuestionState", onThisDayGameViewModel$QuestionState$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("event1", false);
        pluginGeneratedSerialDescriptor.addElement("event2", false);
        pluginGeneratedSerialDescriptor.addElement("month", true);
        pluginGeneratedSerialDescriptor.addElement("day", true);
        pluginGeneratedSerialDescriptor.addElement("yearSelected", true);
        pluginGeneratedSerialDescriptor.addElement("goToNext", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(intSerializer);
        OnThisDay$Event$$serializer onThisDay$Event$$serializer = OnThisDay$Event$$serializer.INSTANCE;
        return new KSerializer[]{onThisDay$Event$$serializer, onThisDay$Event$$serializer, intSerializer, intSerializer, nullable, BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        OnThisDay.Event event = null;
        OnThisDay.Event event2 = null;
        Integer num = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    event = (OnThisDay.Event) beginStructure.decodeSerializableElement(serialDescriptor, 0, OnThisDay$Event$$serializer.INSTANCE, event);
                    i |= 1;
                    break;
                case 1:
                    event2 = (OnThisDay.Event) beginStructure.decodeSerializableElement(serialDescriptor, 1, OnThisDay$Event$$serializer.INSTANCE, event2);
                    i |= 2;
                    break;
                case 2:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, IntSerializer.INSTANCE, num);
                    i |= 16;
                    break;
                case 5:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new OnThisDayGameViewModel.QuestionState(i, event, event2, i2, i3, num, z2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        OnThisDayGameViewModel.QuestionState questionState = (OnThisDayGameViewModel.QuestionState) obj;
        questionState.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        OnThisDay$Event$$serializer onThisDay$Event$$serializer = OnThisDay$Event$$serializer.INSTANCE;
        OnThisDay.Event event = questionState.event1;
        boolean z = questionState.goToNext;
        Integer num = questionState.yearSelected;
        int i = questionState.day;
        int i2 = questionState.month;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, onThisDay$Event$$serializer, event);
        beginStructure.encodeSerializableElement(serialDescriptor, 1, onThisDay$Event$$serializer, questionState.event2);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(2, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(3, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || num != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, IntSerializer.INSTANCE, num);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 5, z);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
