package org.wikipedia.dataclient.discussiontools;

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
import org.wikipedia.dataclient.discussiontools.DiscussionToolsSubscribeResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiscussionToolsSubscribeResponse$$serializer implements GeneratedSerializer {
    public static final DiscussionToolsSubscribeResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DiscussionToolsSubscribeResponse$$serializer discussionToolsSubscribeResponse$$serializer = new DiscussionToolsSubscribeResponse$$serializer();
        INSTANCE = discussionToolsSubscribeResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.discussiontools.DiscussionToolsSubscribeResponse", discussionToolsSubscribeResponse$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("discussiontoolssubscribe", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(DiscussionToolsSubscribeResponse$SubscribeStatus$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        DiscussionToolsSubscribeResponse.SubscribeStatus subscribeStatus = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                subscribeStatus = (DiscussionToolsSubscribeResponse.SubscribeStatus) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, DiscussionToolsSubscribeResponse$SubscribeStatus$$serializer.INSTANCE, subscribeStatus);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DiscussionToolsSubscribeResponse(i, subscribeStatus);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DiscussionToolsSubscribeResponse discussionToolsSubscribeResponse = (DiscussionToolsSubscribeResponse) obj;
        discussionToolsSubscribeResponse.getClass();
        DiscussionToolsSubscribeResponse.SubscribeStatus subscribeStatus = discussionToolsSubscribeResponse.status;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || subscribeStatus != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, DiscussionToolsSubscribeResponse$SubscribeStatus$$serializer.INSTANCE, subscribeStatus);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
