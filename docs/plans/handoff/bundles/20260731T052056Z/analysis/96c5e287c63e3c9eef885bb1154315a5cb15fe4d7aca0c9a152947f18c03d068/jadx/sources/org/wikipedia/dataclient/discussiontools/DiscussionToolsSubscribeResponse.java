package org.wikipedia.dataclient.discussiontools;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DiscussionToolsSubscribeResponse {
    public static final Companion Companion = new Companion();
    public final SubscribeStatus status;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DiscussionToolsSubscribeResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class SubscribeStatus {
        public static final Companion Companion = new Companion();
        public final String page;
        public final boolean subscribe;
        public final String topicName;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiscussionToolsSubscribeResponse$SubscribeStatus$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ SubscribeStatus(int i, String str, String str2, boolean z) {
            if ((i & 1) == 0) {
                this.page = "";
            } else {
                this.page = str;
            }
            if ((i & 2) == 0) {
                this.topicName = "";
            } else {
                this.topicName = str2;
            }
            if ((i & 4) == 0) {
                this.subscribe = false;
            } else {
                this.subscribe = z;
            }
        }
    }

    public /* synthetic */ DiscussionToolsSubscribeResponse(int i, SubscribeStatus subscribeStatus) {
        if ((i & 1) == 0) {
            this.status = null;
        } else {
            this.status = subscribeStatus;
        }
    }
}
