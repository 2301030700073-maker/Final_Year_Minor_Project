package org.wikipedia.search;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SemanticSearchResults {
    public final String languageCode;
    public final String query;
    public final List results;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(10))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SemanticSearchResults$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SemanticSearchResults(int i, String str, String str2, List list) {
        if ((i & 1) == 0) {
            this.languageCode = "";
        } else {
            this.languageCode = str;
        }
        if ((i & 2) == 0) {
            this.query = "";
        } else {
            this.query = str2;
        }
        if ((i & 4) == 0) {
            this.results = EmptyList.INSTANCE;
        } else {
            this.results = list;
        }
    }
}
