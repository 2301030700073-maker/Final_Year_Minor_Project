package org.wikipedia.feed.aggregated;

import java.util.List;
import kotlin.Lazy;
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
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.dataclient.page.PageSummary$$serializer;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.image.FeaturedImage$$serializer;
import org.wikipedia.feed.topread.TopRead;
import org.wikipedia.feed.topread.TopRead$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AggregatedFeedContent$$serializer implements GeneratedSerializer {
    public static final AggregatedFeedContent$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AggregatedFeedContent$$serializer aggregatedFeedContent$$serializer = new AggregatedFeedContent$$serializer();
        INSTANCE = aggregatedFeedContent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.aggregated.AggregatedFeedContent", aggregatedFeedContent$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("tfa", true);
        pluginGeneratedSerialDescriptor.addElement("news", true);
        pluginGeneratedSerialDescriptor.addElement("mostread", true);
        pluginGeneratedSerialDescriptor.addElement("image", true);
        pluginGeneratedSerialDescriptor.addElement("onthisday", true);
        pluginGeneratedSerialDescriptor.addElement("dyk", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = AggregatedFeedContent.$childSerializers;
        return new KSerializer[]{UnsignedKt.getNullable(PageSummary$$serializer.INSTANCE), UnsignedKt.getNullable((KSerializer) lazyArr[1].getValue()), UnsignedKt.getNullable(TopRead$$serializer.INSTANCE), UnsignedKt.getNullable(FeaturedImage$$serializer.INSTANCE), UnsignedKt.getNullable((KSerializer) lazyArr[4].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[5].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = AggregatedFeedContent.$childSerializers;
        boolean z = true;
        int i = 0;
        PageSummary pageSummary = null;
        List list = null;
        TopRead topRead = null;
        FeaturedImage featuredImage = null;
        List list2 = null;
        List list3 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    pageSummary = (PageSummary) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, PageSummary$$serializer.INSTANCE, pageSummary);
                    i |= 1;
                    break;
                case 1:
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), list);
                    i |= 2;
                    break;
                case 2:
                    topRead = (TopRead) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, TopRead$$serializer.INSTANCE, topRead);
                    i |= 4;
                    break;
                case 3:
                    featuredImage = (FeaturedImage) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, FeaturedImage$$serializer.INSTANCE, featuredImage);
                    i |= 8;
                    break;
                case 4:
                    list2 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), list2);
                    i |= 16;
                    break;
                case 5:
                    list3 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list3);
                    i |= 32;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new AggregatedFeedContent(i, pageSummary, list, topRead, featuredImage, list2, list3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        AggregatedFeedContent aggregatedFeedContent = (AggregatedFeedContent) obj;
        aggregatedFeedContent.getClass();
        List list = aggregatedFeedContent.dyk;
        List list2 = aggregatedFeedContent.onthisday;
        FeaturedImage featuredImage = aggregatedFeedContent.potd;
        TopRead topRead = aggregatedFeedContent.topRead;
        List list3 = aggregatedFeedContent.news;
        PageSummary pageSummary = aggregatedFeedContent.tfa;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = AggregatedFeedContent.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageSummary != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, PageSummary$$serializer.INSTANCE, pageSummary);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), list3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || topRead != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, TopRead$$serializer.INSTANCE, topRead);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || featuredImage != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, FeaturedImage$$serializer.INSTANCE, featuredImage);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
