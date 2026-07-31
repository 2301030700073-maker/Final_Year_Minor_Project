package org.wikipedia.dataclient.page;

import kotlin.UnsignedKt;
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
import org.wikipedia.dataclient.page.TalkPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkPage$TopicReply$$serializer implements GeneratedSerializer {
    public static final TalkPage$TopicReply$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        TalkPage$TopicReply$$serializer talkPage$TopicReply$$serializer = new TalkPage$TopicReply$$serializer();
        INSTANCE = talkPage$TopicReply$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.page.TalkPage.TopicReply", talkPage$TopicReply$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("depth", true);
        pluginGeneratedSerialDescriptor.addElement("sha", true);
        pluginGeneratedSerialDescriptor.addElement("html", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{IntSerializer.INSTANCE, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new TalkPage.TopicReply(i, i2, str, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        TalkPage.TopicReply topicReply = (TalkPage.TopicReply) obj;
        topicReply.getClass();
        int i = topicReply.depth;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(0, i, serialDescriptor);
        }
        beginStructure.shouldEncodeElementDefault(serialDescriptor);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        String str = topicReply.sha;
        if (str == null) {
            str = "";
        }
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, stringSerializer, str);
        beginStructure.shouldEncodeElementDefault(serialDescriptor);
        String str2 = topicReply.html;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, str2 != null ? str2 : "");
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
