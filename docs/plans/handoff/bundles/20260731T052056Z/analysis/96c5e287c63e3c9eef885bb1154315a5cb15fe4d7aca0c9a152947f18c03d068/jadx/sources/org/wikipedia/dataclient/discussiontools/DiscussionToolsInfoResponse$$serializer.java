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
import org.wikipedia.dataclient.discussiontools.DiscussionToolsInfoResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiscussionToolsInfoResponse$$serializer implements GeneratedSerializer {
    public static final DiscussionToolsInfoResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DiscussionToolsInfoResponse$$serializer discussionToolsInfoResponse$$serializer = new DiscussionToolsInfoResponse$$serializer();
        INSTANCE = discussionToolsInfoResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.discussiontools.DiscussionToolsInfoResponse", discussionToolsInfoResponse$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("discussiontoolspageinfo", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(DiscussionToolsInfoResponse$PageInfo$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        DiscussionToolsInfoResponse.PageInfo pageInfo = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                pageInfo = (DiscussionToolsInfoResponse.PageInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, DiscussionToolsInfoResponse$PageInfo$$serializer.INSTANCE, pageInfo);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DiscussionToolsInfoResponse(i, pageInfo);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DiscussionToolsInfoResponse discussionToolsInfoResponse = (DiscussionToolsInfoResponse) obj;
        discussionToolsInfoResponse.getClass();
        DiscussionToolsInfoResponse.PageInfo pageInfo = discussionToolsInfoResponse.pageInfo;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageInfo != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, DiscussionToolsInfoResponse$PageInfo$$serializer.INSTANCE, pageInfo);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
