package org.wikipedia.search;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResponse$Continuation$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResults$$serializer implements GeneratedSerializer {
    public static final SearchResults$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SearchResults$$serializer searchResults$$serializer = new SearchResults$$serializer();
        INSTANCE = searchResults$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.search.SearchResults", searchResults$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("results", true);
        pluginGeneratedSerialDescriptor.addElement("continuation", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{SearchResults.$childSerializers[0].getValue(), UnsignedKt.getNullable(MwQueryResponse$Continuation$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchResults.$childSerializers;
        boolean z = true;
        int i = 0;
        List list = null;
        MwQueryResponse.Continuation continuation = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                continuation = (MwQueryResponse.Continuation) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, MwQueryResponse$Continuation$$serializer.INSTANCE, continuation);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        SearchResults searchResults = new SearchResults();
        if ((i & 1) == 0) {
            searchResults.results = new ArrayList();
        } else {
            searchResults.results = list;
        }
        if ((i & 2) == 0) {
            searchResults.continuation = null;
            return searchResults;
        }
        searchResults.continuation = continuation;
        return searchResults;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        SearchResults searchResults = (SearchResults) obj;
        searchResults.getClass();
        MwQueryResponse.Continuation continuation = searchResults.continuation;
        List list = searchResults.results;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchResults.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list, new ArrayList())) {
            beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || continuation != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, MwQueryResponse$Continuation$$serializer.INSTANCE, continuation);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
