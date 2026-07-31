package org.wikipedia.settings;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RemoteConfig$RemoteConfigCommonV1 {
    public final List yir;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(12))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RemoteConfig$RemoteConfigCommonV1$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RemoteConfig$RemoteConfigCommonV1(List list, int i) {
        if ((i & 1) == 0) {
            this.yir = EmptyList.INSTANCE;
        } else {
            this.yir = list;
        }
    }
}
