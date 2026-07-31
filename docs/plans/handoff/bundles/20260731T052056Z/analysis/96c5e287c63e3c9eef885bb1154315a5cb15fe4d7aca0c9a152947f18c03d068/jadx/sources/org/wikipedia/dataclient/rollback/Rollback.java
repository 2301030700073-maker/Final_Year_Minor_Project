package org.wikipedia.dataclient.rollback;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.dataclient.mwapi.MwResponse;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Rollback extends MwResponse {
    public final long lastRevision;
    public final long oldRevision;
    public final int pageId;
    public final long revision;
    public final String summary;
    public final String title;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(28)), null, null, null, null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Rollback$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Rollback(int i, List list, String str, String str2, int i2, String str3, long j, long j2, long j3) {
        super(i, str, list);
        if (4 != (i & 4)) {
            TuplesKt.throwMissingFieldException(i, 4, Rollback$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.title = str2;
        if ((i & 8) == 0) {
            this.pageId = 0;
        } else {
            this.pageId = i2;
        }
        if ((i & 16) == 0) {
            this.summary = null;
        } else {
            this.summary = str3;
        }
        if ((i & 32) == 0) {
            this.revision = 0L;
        } else {
            this.revision = j;
        }
        if ((i & 64) == 0) {
            this.oldRevision = 0L;
        } else {
            this.oldRevision = j2;
        }
        if ((i & 128) == 0) {
            this.lastRevision = 0L;
        } else {
            this.lastRevision = j3;
        }
    }
}
