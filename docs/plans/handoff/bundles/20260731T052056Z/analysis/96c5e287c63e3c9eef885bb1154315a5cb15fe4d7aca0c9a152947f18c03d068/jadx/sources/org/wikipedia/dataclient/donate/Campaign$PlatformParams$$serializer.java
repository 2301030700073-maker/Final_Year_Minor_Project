package org.wikipedia.dataclient.donate;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.donate.Campaign;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Campaign$PlatformParams$$serializer implements GeneratedSerializer {
    public static final Campaign$PlatformParams$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Campaign$PlatformParams$$serializer campaign$PlatformParams$$serializer = new Campaign$PlatformParams$$serializer();
        INSTANCE = campaign$PlatformParams$$serializer;
        descriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.donate.Campaign.PlatformParams", campaign$PlatformParams$$serializer, 0);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[0];
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
        if (decodeElementIndex == -1) {
            beginStructure.endStructure(serialDescriptor);
            return new Campaign.PlatformParams();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
        return null;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ((Campaign.PlatformParams) obj).getClass();
        SerialDescriptor serialDescriptor = descriptor;
        uuidKt.beginStructure(serialDescriptor).endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
