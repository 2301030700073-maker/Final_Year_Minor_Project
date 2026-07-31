package org.wikipedia.dataclient.discussiontools;

import coil3.util.ContextsKt;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DiscussionToolsSubscriptionList {
    public final Map subscriptions;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(6))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DiscussionToolsSubscriptionList$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DiscussionToolsSubscriptionList(int i, Map map) {
        if ((i & 1) == 0) {
            this.subscriptions = EmptyMap.INSTANCE;
        } else {
            this.subscriptions = map;
        }
    }
}
