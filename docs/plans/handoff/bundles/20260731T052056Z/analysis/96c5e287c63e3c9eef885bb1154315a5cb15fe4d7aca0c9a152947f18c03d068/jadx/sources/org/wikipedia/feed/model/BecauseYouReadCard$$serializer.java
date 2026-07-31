package org.wikipedia.feed.model;

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
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageTitle$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BecauseYouReadCard$$serializer implements GeneratedSerializer {
    public static final BecauseYouReadCard$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        BecauseYouReadCard$$serializer becauseYouReadCard$$serializer = new BecauseYouReadCard$$serializer();
        INSTANCE = becauseYouReadCard$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.model.BecauseYouReadCard", becauseYouReadCard$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("title", false);
        pluginGeneratedSerialDescriptor.addElement("sourceDisplayTitle", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{PageTitle$$serializer.INSTANCE, StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        PageTitle pageTitle = null;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                pageTitle = (PageTitle) beginStructure.decodeSerializableElement(serialDescriptor, 0, PageTitle$$serializer.INSTANCE, pageTitle);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new BecauseYouReadCard(i, pageTitle, str);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        BecauseYouReadCard becauseYouReadCard = (BecauseYouReadCard) obj;
        becauseYouReadCard.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 0, PageTitle$$serializer.INSTANCE, becauseYouReadCard.title);
        beginStructure.encodeStringElement(serialDescriptor, 1, becauseYouReadCard.sourceDisplayTitle);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
