package org.wikipedia.games.onthisday;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameViewModel$LastPlayedInfo$$serializer implements GeneratedSerializer {
    public static final OnThisDayGameViewModel$LastPlayedInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        OnThisDayGameViewModel$LastPlayedInfo$$serializer onThisDayGameViewModel$LastPlayedInfo$$serializer = new OnThisDayGameViewModel$LastPlayedInfo$$serializer();
        INSTANCE = onThisDayGameViewModel$LastPlayedInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.games.onthisday.OnThisDayGameViewModel.LastPlayedInfo", onThisDayGameViewModel$LastPlayedInfo$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("gamePlayDate", false);
        pluginGeneratedSerialDescriptor.addElement("sessionDate", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        String str = null;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new OnThisDayGameViewModel.LastPlayedInfo(i, str, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        OnThisDayGameViewModel.LastPlayedInfo lastPlayedInfo = (OnThisDayGameViewModel.LastPlayedInfo) obj;
        lastPlayedInfo.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 0, lastPlayedInfo.gamePlayDate);
        beginStructure.encodeStringElement(serialDescriptor, 1, lastPlayedInfo.sessionDate);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
