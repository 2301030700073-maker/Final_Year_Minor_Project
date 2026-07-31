package org.wikipedia.dataclient.discussiontools;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DiscussionToolsInfoResponse {
    public static final Companion Companion = new Companion();
    public final PageInfo pageInfo;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DiscussionToolsInfoResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class PageInfo {
        public final List threads;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(5))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiscussionToolsInfoResponse$PageInfo$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ PageInfo(List list, int i) {
            if ((i & 1) == 0) {
                this.threads = EmptyList.INSTANCE;
            } else {
                this.threads = list;
            }
        }
    }

    public /* synthetic */ DiscussionToolsInfoResponse(int i, PageInfo pageInfo) {
        if ((i & 1) == 0) {
            this.pageInfo = null;
        } else {
            this.pageInfo = pageInfo;
        }
    }
}
