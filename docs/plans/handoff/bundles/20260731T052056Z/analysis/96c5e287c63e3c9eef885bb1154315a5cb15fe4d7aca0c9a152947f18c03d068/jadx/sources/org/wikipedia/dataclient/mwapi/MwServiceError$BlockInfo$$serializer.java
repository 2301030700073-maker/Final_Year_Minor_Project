package org.wikipedia.dataclient.mwapi;

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
import org.wikipedia.dataclient.mwapi.MwServiceError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwServiceError$BlockInfo$$serializer implements GeneratedSerializer {
    public static final MwServiceError$BlockInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwServiceError$BlockInfo$$serializer mwServiceError$BlockInfo$$serializer = new MwServiceError$BlockInfo$$serializer();
        INSTANCE = mwServiceError$BlockInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwServiceError.BlockInfo", mwServiceError$BlockInfo$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("blockedbyid", true);
        pluginGeneratedSerialDescriptor.addElement("blockid", true);
        pluginGeneratedSerialDescriptor.addElement("blockedby", true);
        pluginGeneratedSerialDescriptor.addElement("blockreason", true);
        pluginGeneratedSerialDescriptor.addElement("blockedtimestamp", true);
        pluginGeneratedSerialDescriptor.addElement("blockexpiry", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwServiceError.BlockInfo(i, i2, i3, str, str2, str3, str4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        MwServiceError.BlockInfo blockInfo = (MwServiceError.BlockInfo) obj;
        blockInfo.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwServiceError.BlockInfo.write$Self(blockInfo, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
