package org.wikipedia.dataclient.growthtasks;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GrowthUserImpact$ArticleViews$$serializer implements GeneratedSerializer {
    public static final GrowthUserImpact$ArticleViews$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GrowthUserImpact$ArticleViews$$serializer growthUserImpact$ArticleViews$$serializer = new GrowthUserImpact$ArticleViews$$serializer();
        INSTANCE = growthUserImpact$ArticleViews$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.growthtasks.GrowthUserImpact.ArticleViews", growthUserImpact$ArticleViews$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("firstEditDate", true);
        pluginGeneratedSerialDescriptor.addElement("newestEdit", true);
        pluginGeneratedSerialDescriptor.addElement("imageUrl", true);
        pluginGeneratedSerialDescriptor.addElement("viewsCount", true);
        pluginGeneratedSerialDescriptor.addElement("views", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable(JsonElementSerializer.INSTANCE);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, LongSerializer.INSTANCE, nullable};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        JsonElement jsonElement = null;
        long j = 0;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                str3 = beginStructure.decodeStringElement(serialDescriptor, 2);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                j = beginStructure.decodeLongElement(serialDescriptor, 3);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, JsonElementSerializer.INSTANCE, jsonElement);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new GrowthUserImpact.ArticleViews(i, str, str2, str3, j, jsonElement);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        GrowthUserImpact.ArticleViews articleViews = (GrowthUserImpact.ArticleViews) obj;
        articleViews.getClass();
        JsonElement jsonElement = articleViews.views;
        long j = articleViews.viewsCount;
        String str = articleViews.imageUrl;
        String str2 = articleViews.newestEdit;
        String str3 = articleViews.firstEditDate;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 2, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 3, j);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || jsonElement != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, JsonElementSerializer.INSTANCE, jsonElement);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
