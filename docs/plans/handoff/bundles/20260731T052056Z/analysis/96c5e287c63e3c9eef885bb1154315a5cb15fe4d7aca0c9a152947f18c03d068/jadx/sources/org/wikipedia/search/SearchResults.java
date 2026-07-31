package org.wikipedia.search;

import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SearchResults {
    public MwQueryResponse.Continuation continuation;
    public List results;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(9)), null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SearchResults$$serializer.INSTANCE;
        }
    }

    public SearchResults(int i, ArrayList arrayList) {
        this.results = (i & 1) != 0 ? new ArrayList() : arrayList;
        this.continuation = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchResults)) {
            return false;
        }
        SearchResults searchResults = (SearchResults) obj;
        return Intrinsics.areEqual(this.results, searchResults.results) && Intrinsics.areEqual(this.continuation, searchResults.continuation);
    }

    public final int hashCode() {
        int hashCode = this.results.hashCode() * 31;
        MwQueryResponse.Continuation continuation = this.continuation;
        return hashCode + (continuation == null ? 0 : continuation.hashCode());
    }

    public final String toString() {
        return "SearchResults(results=" + this.results + ", continuation=" + this.continuation + ")";
    }
}
