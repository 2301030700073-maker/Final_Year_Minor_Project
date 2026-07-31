package org.wikipedia.dataclient.rollback;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RollbackPostResponse extends MwPostResponse {
    public final Rollback rollback;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(29)), null, null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RollbackPostResponse$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RollbackPostResponse(int i, List list, String str, MwQueryPage mwQueryPage, String str2, int i2, Rollback rollback) {
        super(i, list, str, mwQueryPage, str2, i2);
        if ((i & 32) == 0) {
            this.rollback = null;
        } else {
            this.rollback = rollback;
        }
    }
}
