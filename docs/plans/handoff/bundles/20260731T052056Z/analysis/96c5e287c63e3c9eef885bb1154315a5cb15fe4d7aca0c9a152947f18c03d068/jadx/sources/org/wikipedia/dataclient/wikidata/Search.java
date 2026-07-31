package org.wikipedia.dataclient.wikidata;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.mwapi.MwResponse;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Search extends MwResponse {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List results;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Search$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class SearchResult {
        public static final Companion Companion = new Companion();
        public final String description;
        public final String id;
        public final String label;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Search$SearchResult$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ SearchResult(int i, String str, String str2, String str3) {
            if ((i & 1) == 0) {
                this.id = "";
            } else {
                this.id = str;
            }
            if ((i & 2) == 0) {
                this.label = "";
            } else {
                this.label = str2;
            }
            if ((i & 4) == 0) {
                this.description = "";
            } else {
                this.description = str3;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(8)), null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(9))};
    }

    public /* synthetic */ Search(int i, String str, List list, List list2) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.results = EmptyList.INSTANCE;
        } else {
            this.results = list2;
        }
    }
}
