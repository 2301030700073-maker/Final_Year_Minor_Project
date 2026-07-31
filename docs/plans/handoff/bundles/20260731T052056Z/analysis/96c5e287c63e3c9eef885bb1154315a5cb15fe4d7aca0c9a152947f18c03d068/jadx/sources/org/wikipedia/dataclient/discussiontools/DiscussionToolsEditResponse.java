package org.wikipedia.dataclient.discussiontools;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DiscussionToolsEditResponse extends MwResponse {
    public final EditResult result;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(4)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DiscussionToolsEditResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class EditResult {
        public static final Companion Companion = new Companion();
        public final String content;
        public final long newRevId;
        public final String result;
        public final boolean watched;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiscussionToolsEditResponse$EditResult$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ EditResult(int i, String str, String str2, long j, boolean z) {
            if ((i & 1) == 0) {
                this.result = "";
            } else {
                this.result = str;
            }
            if ((i & 2) == 0) {
                this.content = "";
            } else {
                this.content = str2;
            }
            if ((i & 4) == 0) {
                this.newRevId = 0L;
            } else {
                this.newRevId = j;
            }
            if ((i & 8) == 0) {
                this.watched = false;
            } else {
                this.watched = z;
            }
        }
    }

    public /* synthetic */ DiscussionToolsEditResponse(int i, List list, String str, EditResult editResult) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.result = null;
        } else {
            this.result = editResult;
        }
    }
}
