package org.wikipedia.feed.aggregated;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.topread.TopRead;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class AggregatedFeedContent {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List dyk;
    public final List news;
    public final List onthisday;
    public final FeaturedImage potd;
    public final PageSummary tfa;
    public final TopRead topRead;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return AggregatedFeedContent$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(24)), null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(25)), ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(26))};
    }

    public /* synthetic */ AggregatedFeedContent(int i, PageSummary pageSummary, List list, TopRead topRead, FeaturedImage featuredImage, List list2, List list3) {
        if ((i & 1) == 0) {
            this.tfa = null;
        } else {
            this.tfa = pageSummary;
        }
        if ((i & 2) == 0) {
            this.news = null;
        } else {
            this.news = list;
        }
        if ((i & 4) == 0) {
            this.topRead = null;
        } else {
            this.topRead = topRead;
        }
        if ((i & 8) == 0) {
            this.potd = null;
        } else {
            this.potd = featuredImage;
        }
        if ((i & 16) == 0) {
            this.onthisday = null;
        } else {
            this.onthisday = list2;
        }
        if ((i & 32) == 0) {
            this.dyk = null;
        } else {
            this.dyk = list3;
        }
    }
}
