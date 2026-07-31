package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleInteractionEvent extends TimedEvent {
    public final int pageId;
    public final String wikiDb;

    public ArticleInteractionEvent(int i, String str) {
        this.wikiDb = str;
        this.pageId = i;
    }

    public final void submitEvent(String str) {
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new ArticleInteractionEventImpl((int) (System.currentTimeMillis() - this.startTime), this.pageId, this.wikiDb, str));
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ArticleInteractionEventImpl extends MobileAppsEvent {
        public static final Companion Companion = new Companion();
        public final String action;
        public final int pageId;
        public final int timeSpentMs;
        public final String wikiDb;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ArticleInteractionEventImpl(int i, Event.Meta meta, String str, boolean z, String str2, String str3, int i2, String str4, int i3, String str5) {
            super(i, meta, str, z, str2, str3);
            if (480 != (i & 480)) {
                TuplesKt.throwMissingFieldException(i, 480, ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.timeSpentMs = i2;
            this.wikiDb = str4;
            this.pageId = i3;
            this.action = str5;
        }

        public ArticleInteractionEventImpl(int i, int i2, String str, String str2) {
            super("android.article_toolbar_interaction");
            this.timeSpentMs = i;
            this.wikiDb = str;
            this.pageId = i2;
            this.action = str2;
        }
    }
}
