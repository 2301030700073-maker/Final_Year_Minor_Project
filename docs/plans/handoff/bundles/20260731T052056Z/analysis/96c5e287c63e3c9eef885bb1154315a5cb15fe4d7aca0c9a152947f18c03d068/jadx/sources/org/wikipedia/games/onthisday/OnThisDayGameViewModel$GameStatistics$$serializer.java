package org.wikipedia.games.onthisday;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameViewModel$GameStatistics$$serializer implements GeneratedSerializer {
    public static final OnThisDayGameViewModel$GameStatistics$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        OnThisDayGameViewModel$GameStatistics$$serializer onThisDayGameViewModel$GameStatistics$$serializer = new OnThisDayGameViewModel$GameStatistics$$serializer();
        INSTANCE = onThisDayGameViewModel$GameStatistics$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameStatistics", onThisDayGameViewModel$GameStatistics$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("totalGamesPlayed", true);
        pluginGeneratedSerialDescriptor.addElement("averageScore", true);
        pluginGeneratedSerialDescriptor.addElement("currentStreak", true);
        pluginGeneratedSerialDescriptor.addElement("bestStreak", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable(DoubleSerializer.INSTANCE);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, nullable, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        Double d = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                d = (Double) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, DoubleSerializer.INSTANCE, d);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                i3 = beginStructure.decodeIntElement(serialDescriptor, 2);
                i |= 4;
            } else {
                if (decodeElementIndex != 3) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                i4 = beginStructure.decodeIntElement(serialDescriptor, 3);
                i |= 8;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new OnThisDayGameViewModel.GameStatistics(i, i2, d, i3, i4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        OnThisDayGameViewModel.GameStatistics gameStatistics = (OnThisDayGameViewModel.GameStatistics) obj;
        gameStatistics.getClass();
        int i = gameStatistics.bestStreak;
        int i2 = gameStatistics.currentStreak;
        Double d = gameStatistics.averageScore;
        int i3 = gameStatistics.totalGamesPlayed;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i3 != 0) {
            beginStructure.encodeIntElement(0, i3, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || d != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, DoubleSerializer.INSTANCE, d);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(2, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(3, i, serialDescriptor);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
