package org.wikimedia.testkitchen.context;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageData$$serializer implements GeneratedSerializer {
    public static final PageData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        PageData$$serializer pageData$$serializer = new PageData$$serializer();
        INSTANCE = pageData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.context.PageData", pageData$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("namespace_id", true);
        pluginGeneratedSerialDescriptor.addElement("namespace_name", true);
        pluginGeneratedSerialDescriptor.addElement("revision_id", true);
        pluginGeneratedSerialDescriptor.addElement("wikidata_qid", true);
        pluginGeneratedSerialDescriptor.addElement("content_language", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(intSerializer);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{nullable, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(intSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(LongSerializer.INSTANCE), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        Integer num = null;
        String str = null;
        Integer num2 = null;
        String str2 = null;
        Long l = null;
        String str3 = null;
        String str4 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, num);
                    i |= 1;
                    break;
                case 1:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                    i |= 2;
                    break;
                case 2:
                    num2 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, num2);
                    i |= 4;
                    break;
                case 3:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str2);
                    i |= 8;
                    break;
                case 4:
                    l = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, LongSerializer.INSTANCE, l);
                    i |= 16;
                    break;
                case 5:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str3);
                    i |= 32;
                    break;
                case 6:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str4);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        PageData pageData = new PageData();
        if ((i & 1) == 0) {
            pageData.id = null;
        } else {
            pageData.id = num;
        }
        if ((i & 2) == 0) {
            pageData.title = null;
        } else {
            pageData.title = str;
        }
        if ((i & 4) == 0) {
            pageData.namespaceId = null;
        } else {
            pageData.namespaceId = num2;
        }
        if ((i & 8) == 0) {
            pageData.namespaceName = null;
        } else {
            pageData.namespaceName = str2;
        }
        if ((i & 16) == 0) {
            pageData.revisionId = null;
        } else {
            pageData.revisionId = l;
        }
        if ((i & 32) == 0) {
            pageData.wikidataItemQid = null;
        } else {
            pageData.wikidataItemQid = str3;
        }
        if ((i & 64) == 0) {
            pageData.contentLanguage = null;
            return pageData;
        }
        pageData.contentLanguage = str4;
        return pageData;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        PageData pageData = (PageData) obj;
        pageData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.id != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, pageData.id);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.title != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, pageData.title);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.namespaceId != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, IntSerializer.INSTANCE, pageData.namespaceId);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.namespaceName != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, pageData.namespaceName);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.revisionId != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, LongSerializer.INSTANCE, pageData.revisionId);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.wikidataItemQid != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, pageData.wikidataItemQid);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageData.contentLanguage != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, pageData.contentLanguage);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
