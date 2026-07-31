package org.wikipedia.feed.model;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.model.SeeAllRecommendationCard;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SeeAllRecommendationCard$$serializer implements GeneratedSerializer {
    public static final SeeAllRecommendationCard$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SeeAllRecommendationCard$$serializer seeAllRecommendationCard$$serializer = new SeeAllRecommendationCard$$serializer();
        INSTANCE = seeAllRecommendationCard$$serializer;
        descriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.model.SeeAllRecommendationCard", seeAllRecommendationCard$$serializer, 0);
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
            return new SeeAllRecommendationCard();
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
        ((SeeAllRecommendationCard) obj).getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        SeeAllRecommendationCard.Companion companion = SeeAllRecommendationCard.Companion;
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
