package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleLinkPreviewInteractionEvent extends TimedEvent {
    public final int pageId;
    public final int source;
    public final String wikiDb;

    public ArticleLinkPreviewInteractionEvent(String str, int i, int i2) {
        this.wikiDb = str;
        this.pageId = i;
        this.source = i2;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ArticleLinkPreviewInteractionEventImpl extends MobileAppsEvent {
        public static final Companion Companion = new Companion();
        public final String action;
        public final int pageId;
        public final int source;
        public final int timeSpentMs;
        public final int version;
        public final String wikiDb;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ArticleLinkPreviewInteractionEventImpl(int i, Event.Meta meta, String str, boolean z, String str2, String str3, String str4, int i2, int i3, String str5, int i4, int i5) {
            super(i, meta, str, z, str2, str3);
            if (2016 != (i & 2016)) {
                TuplesKt.throwMissingFieldException(i, 2016, ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.action = str4;
            this.source = i2;
            this.timeSpentMs = i3;
            this.wikiDb = str5;
            this.pageId = i4;
            this.version = i5;
        }

        public ArticleLinkPreviewInteractionEventImpl(int i, int i2, int i3, String str, String str2) {
            super("android.article_link_preview_interaction");
            this.action = str;
            this.source = i;
            this.timeSpentMs = i2;
            this.wikiDb = str2;
            this.pageId = i3;
            this.version = 3;
        }
    }
}
