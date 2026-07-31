package org.wikipedia.dataclient.page;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class TalkPage {
    public final long revision;
    public final List topics;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(17))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return TalkPage$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Topic {
        public final int depth;
        public final String html;
        public final int id;
        public final List replies;
        public final TopicShas shas;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(18))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return TalkPage$Topic$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Topic(int i, int i2, int i3, String str, TopicShas topicShas, List list) {
            if ((i & 1) == 0) {
                this.id = 0;
            } else {
                this.id = i2;
            }
            if ((i & 2) == 0) {
                this.depth = 0;
            } else {
                this.depth = i3;
            }
            if ((i & 4) == 0) {
                this.html = null;
            } else {
                this.html = str;
            }
            if ((i & 8) == 0) {
                this.shas = null;
            } else {
                this.shas = topicShas;
            }
            if ((i & 16) == 0) {
                this.replies = null;
            } else {
                this.replies = list;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TopicReply {
        public static final Companion Companion = new Companion();
        public final int depth;
        public final String html;
        public final String sha;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return TalkPage$TopicReply$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ TopicReply(int i, int i2, String str, String str2) {
            this.depth = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.sha = null;
            } else {
                this.sha = str;
            }
            if ((i & 4) == 0) {
                this.html = null;
            } else {
                this.html = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TopicShas {
        public static final Companion Companion = new Companion();
        public final String html;
        public final String indicator;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return TalkPage$TopicShas$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ TopicShas(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.html = null;
            } else {
                this.html = str;
            }
            if ((i & 2) == 0) {
                this.indicator = null;
            } else {
                this.indicator = str2;
            }
        }
    }

    public /* synthetic */ TalkPage(int i, long j, List list) {
        this.revision = (i & 1) == 0 ? 0L : j;
        if ((i & 2) == 0) {
            this.topics = null;
        } else {
            this.topics = list;
        }
    }
}
