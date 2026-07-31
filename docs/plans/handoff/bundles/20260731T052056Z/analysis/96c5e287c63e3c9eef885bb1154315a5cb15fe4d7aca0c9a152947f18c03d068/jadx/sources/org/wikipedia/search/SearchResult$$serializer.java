package org.wikipedia.search;

import java.util.List;
import kotlin.Lazy;
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
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageTitle$$serializer;
import org.wikipedia.search.SearchResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResult$$serializer implements GeneratedSerializer {
    public static final SearchResult$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SearchResult$$serializer searchResult$$serializer = new SearchResult$$serializer();
        INSTANCE = searchResult$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.search.SearchResult", searchResult$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("pageTitle", false);
        pluginGeneratedSerialDescriptor.addElement("redirectFrom", false);
        pluginGeneratedSerialDescriptor.addElement("type", false);
        pluginGeneratedSerialDescriptor.addElement("coordinates", true);
        pluginGeneratedSerialDescriptor.addElement("snippet", true);
        pluginGeneratedSerialDescriptor.addElement("indexInApiCall", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = SearchResult.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{PageTitle$$serializer.INSTANCE, UnsignedKt.getNullable(stringSerializer), lazyArr[2].getValue(), UnsignedKt.getNullable((KSerializer) lazyArr[3].getValue()), UnsignedKt.getNullable(stringSerializer), IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchResult.$childSerializers;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        PageTitle pageTitle = null;
        String str = null;
        SearchResult.SearchResultType searchResultType = null;
        List list = null;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    pageTitle = (PageTitle) beginStructure.decodeSerializableElement(serialDescriptor, 0, PageTitle$$serializer.INSTANCE, pageTitle);
                    i |= 1;
                    break;
                case 1:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                    i |= 2;
                    break;
                case 2:
                    searchResultType = (SearchResult.SearchResultType) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), searchResultType);
                    i |= 4;
                    break;
                case 3:
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list);
                    i |= 8;
                    break;
                case 4:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str2);
                    i |= 16;
                    break;
                case 5:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SearchResult(i, pageTitle, str, searchResultType, list, str2, i2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        SearchResult searchResult = (SearchResult) obj;
        searchResult.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchResult.$childSerializers;
        PageTitle$$serializer pageTitle$$serializer = PageTitle$$serializer.INSTANCE;
        PageTitle pageTitle = searchResult.pageTitle;
        int i = searchResult.indexInApiCall;
        String str = searchResult.snippet;
        List list = searchResult.coordinates;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, pageTitle$$serializer, pageTitle);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, stringSerializer, searchResult.redirectFrom);
        beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), searchResult.type);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, stringSerializer, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(5, i, serialDescriptor);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
