package org.wikipedia.dataclient.page;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
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
public final /* synthetic */ class TalkPage$Topic$$serializer implements GeneratedSerializer {
    public static final TalkPage$Topic$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        TalkPage$Topic$$serializer talkPage$Topic$$serializer = new TalkPage$Topic$$serializer();
        INSTANCE = talkPage$Topic$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.page.TalkPage.Topic", talkPage$Topic$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("depth", true);
        pluginGeneratedSerialDescriptor.addElement("html", true);
        pluginGeneratedSerialDescriptor.addElement("shas", true);
        pluginGeneratedSerialDescriptor.addElement("replies", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = TalkPage.Topic.$childSerializers;
        KSerializer nullable = UnsignedKt.getNullable(StringSerializer.INSTANCE);
        KSerializer nullable2 = UnsignedKt.getNullable(TalkPage$TopicShas$$serializer.INSTANCE);
        KSerializer nullable3 = UnsignedKt.getNullable((KSerializer) lazyArr[4].getValue());
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, nullable, nullable2, nullable3};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = TalkPage.Topic.$childSerializers;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        String str = null;
        TalkPage.TopicShas topicShas = null;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                topicShas = (TalkPage.TopicShas) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, TalkPage$TopicShas$$serializer.INSTANCE, topicShas);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), list);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new TalkPage.Topic(i, i2, i3, str, topicShas, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        TalkPage.Topic topic = (TalkPage.Topic) obj;
        topic.getClass();
        TalkPage.TopicShas topicShas = topic.shas;
        int i = topic.depth;
        int i2 = topic.id;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = TalkPage.Topic.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
            beginStructure.encodeIntElement(0, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(1, i, serialDescriptor);
        }
        beginStructure.shouldEncodeElementDefault(serialDescriptor);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        String str = topic.html;
        if (str == null) {
            str = "";
        }
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || topicShas != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, TalkPage$TopicShas$$serializer.INSTANCE, topicShas);
        }
        beginStructure.shouldEncodeElementDefault(serialDescriptor);
        KSerializer kSerializer = (KSerializer) lazyArr[4].getValue();
        Object obj2 = topic.replies;
        if (obj2 == null) {
            obj2 = EmptyList.INSTANCE;
        }
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, kSerializer, obj2);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
