package org.wikipedia.dataclient.watch;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class WatchPostResponse extends MwPostResponse {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final Boolean batchcomplete;
    public final List watch;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return WatchPostResponse$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(1)), null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(2))};
    }

    public /* synthetic */ WatchPostResponse(int i, List list, String str, MwQueryPage mwQueryPage, String str2, int i2, Boolean bool, List list2) {
        super(i, list, str, mwQueryPage, str2, i2);
        if ((i & 32) == 0) {
            this.batchcomplete = null;
        } else {
            this.batchcomplete = bool;
        }
        if ((i & 64) == 0) {
            this.watch = null;
        } else {
            this.watch = list2;
        }
    }
}
