package org.wikipedia.dataclient.discussiontools;

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
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.discussiontools.DiscussionToolsEditResponse;
import org.wikipedia.dataclient.mwapi.MwResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiscussionToolsEditResponse$$serializer implements GeneratedSerializer {
    public static final DiscussionToolsEditResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        DiscussionToolsEditResponse$$serializer discussionToolsEditResponse$$serializer = new DiscussionToolsEditResponse$$serializer();
        INSTANCE = discussionToolsEditResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.discussiontools.DiscussionToolsEditResponse", discussionToolsEditResponse$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("errors", true);
        pluginGeneratedSerialDescriptor.addElement("servedby", true);
        pluginGeneratedSerialDescriptor.addElement("discussiontoolsedit", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) DiscussionToolsEditResponse.$childSerializers[0].getValue()), UnsignedKt.getNullable(StringSerializer.INSTANCE), UnsignedKt.getNullable(DiscussionToolsEditResponse$EditResult$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = DiscussionToolsEditResponse.$childSerializers;
        boolean z = true;
        int i = 0;
        List list = null;
        String str = null;
        DiscussionToolsEditResponse.EditResult editResult = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                editResult = (DiscussionToolsEditResponse.EditResult) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, DiscussionToolsEditResponse$EditResult$$serializer.INSTANCE, editResult);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new DiscussionToolsEditResponse(i, list, str, editResult);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        DiscussionToolsEditResponse discussionToolsEditResponse = (DiscussionToolsEditResponse) obj;
        discussionToolsEditResponse.getClass();
        DiscussionToolsEditResponse.EditResult editResult = discussionToolsEditResponse.result;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwResponse.write$Self(discussionToolsEditResponse, beginStructure, serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || editResult != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, DiscussionToolsEditResponse$EditResult$$serializer.INSTANCE, editResult);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
