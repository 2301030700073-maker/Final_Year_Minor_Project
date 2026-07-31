package org.wikipedia.feed.model;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;
import org.wikipedia.feed.personalization.db.entity.InterestArticle$$serializer;
import org.wikipedia.feed.personalization.db.entity.InterestTopic;
import org.wikipedia.feed.personalization.db.entity.InterestTopic$$serializer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageTitle$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BasedOnInterestCard$$serializer implements GeneratedSerializer {
    public static final BasedOnInterestCard$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        BasedOnInterestCard$$serializer basedOnInterestCard$$serializer = new BasedOnInterestCard$$serializer();
        INSTANCE = basedOnInterestCard$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.model.BasedOnInterestCard", basedOnInterestCard$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("title", false);
        pluginGeneratedSerialDescriptor.addElement("interestTopic", true);
        pluginGeneratedSerialDescriptor.addElement("interestArticle", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{PageTitle$$serializer.INSTANCE, UnsignedKt.getNullable(InterestTopic$$serializer.INSTANCE), UnsignedKt.getNullable(InterestArticle$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        PageTitle pageTitle = null;
        InterestTopic interestTopic = null;
        InterestArticle interestArticle = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                pageTitle = (PageTitle) beginStructure.decodeSerializableElement(serialDescriptor, 0, PageTitle$$serializer.INSTANCE, pageTitle);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                interestTopic = (InterestTopic) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, InterestTopic$$serializer.INSTANCE, interestTopic);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                interestArticle = (InterestArticle) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, InterestArticle$$serializer.INSTANCE, interestArticle);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new BasedOnInterestCard(i, pageTitle, interestTopic, interestArticle);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        BasedOnInterestCard basedOnInterestCard = (BasedOnInterestCard) obj;
        basedOnInterestCard.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        PageTitle$$serializer pageTitle$$serializer = PageTitle$$serializer.INSTANCE;
        PageTitle pageTitle = basedOnInterestCard.title;
        InterestArticle interestArticle = basedOnInterestCard.interestArticle;
        InterestTopic interestTopic = basedOnInterestCard.interestTopic;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, pageTitle$$serializer, pageTitle);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || interestTopic != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, InterestTopic$$serializer.INSTANCE, interestTopic);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || interestArticle != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, InterestArticle$$serializer.INSTANCE, interestArticle);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
