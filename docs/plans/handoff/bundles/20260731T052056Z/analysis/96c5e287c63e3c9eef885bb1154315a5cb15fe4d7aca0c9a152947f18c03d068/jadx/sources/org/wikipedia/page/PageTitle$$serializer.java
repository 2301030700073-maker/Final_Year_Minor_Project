package org.wikipedia.page;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
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
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.WikiSite$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageTitle$$serializer implements GeneratedSerializer {
    public static final PageTitle$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        PageTitle$$serializer pageTitle$$serializer = new PageTitle$$serializer();
        INSTANCE = pageTitle$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.page.PageTitle", pageTitle$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("namespace", true);
        pluginGeneratedSerialDescriptor.addElement("site", false);
        pluginGeneratedSerialDescriptor.addElement("text", true);
        pluginGeneratedSerialDescriptor.addElement("fragment", true);
        pluginGeneratedSerialDescriptor.addElement("thumbUrl", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("displayText", true);
        pluginGeneratedSerialDescriptor.addElement("extract", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(stringSerializer), WikiSite$$serializer.INSTANCE, stringSerializer, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        String str;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Object obj = null;
        boolean z = true;
        int i = 0;
        String str2 = null;
        WikiSite wikiSite = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str2);
                    i |= 1;
                    break;
                case 1:
                    wikiSite = (WikiSite) beginStructure.decodeSerializableElement(serialDescriptor, 1, WikiSite$$serializer.INSTANCE, wikiSite);
                    i |= 2;
                    break;
                case 2:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str4);
                    i |= 8;
                    break;
                case 4:
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str5);
                    i |= 16;
                    break;
                case 5:
                    str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str6);
                    i |= 32;
                    break;
                case 6:
                    str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str7);
                    i |= 64;
                    break;
                case 7:
                    str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str8);
                    i |= 128;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        if (2 != (i & 2)) {
            TuplesKt.throwMissingFieldException(i, 2, descriptor);
            throw null;
        }
        PageTitle pageTitle = new PageTitle();
        if ((i & 1) == 0) {
            pageTitle._namespace = null;
        } else {
            pageTitle._namespace = str2;
        }
        pageTitle.wikiSite = wikiSite;
        if ((i & 4) == 0) {
            pageTitle._text = "";
        } else {
            pageTitle._text = str3;
        }
        if ((i & 8) == 0) {
            str = null;
            pageTitle.fragment = null;
        } else {
            str = null;
            pageTitle.fragment = str4;
        }
        if ((i & 16) == 0) {
            pageTitle.thumbUrl = str;
        } else {
            pageTitle.thumbUrl = str5;
        }
        if ((i & 32) == 0) {
            pageTitle.description = str;
        } else {
            pageTitle.description = str6;
        }
        if ((i & 64) == 0) {
            pageTitle._displayText = str;
        } else {
            pageTitle._displayText = str7;
        }
        if ((i & 128) == 0) {
            pageTitle.extract = str;
            return pageTitle;
        }
        pageTitle.extract = str8;
        return pageTitle;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        PageTitle pageTitle = (PageTitle) obj;
        pageTitle.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageTitle._namespace != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, pageTitle._namespace);
        }
        WikiSite$$serializer wikiSite$$serializer = WikiSite$$serializer.INSTANCE;
        WikiSite wikiSite = pageTitle.wikiSite;
        String str = pageTitle._text;
        beginStructure.encodeSerializableElement(serialDescriptor, 1, wikiSite$$serializer, wikiSite);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 2, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageTitle.fragment != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, pageTitle.fragment);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageTitle.thumbUrl != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, pageTitle.thumbUrl);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageTitle.description != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, pageTitle.description);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageTitle._displayText != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, pageTitle._displayText);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageTitle.extract != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, pageTitle.extract);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
