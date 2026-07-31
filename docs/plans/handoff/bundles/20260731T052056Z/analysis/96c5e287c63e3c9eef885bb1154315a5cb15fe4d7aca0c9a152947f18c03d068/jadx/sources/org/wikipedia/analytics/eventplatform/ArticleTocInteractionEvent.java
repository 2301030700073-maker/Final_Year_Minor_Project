package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleTocInteractionEvent {
    public long lastScrollStartMillis;
    public int numOpens;
    public int numSectionClicks;
    public final int numSections;
    public final int pageId;
    public int totalOpenedSec;
    public final String wikiDb;

    public ArticleTocInteractionEvent(int i, String str, int i2) {
        this.pageId = i;
        this.wikiDb = str;
        this.numSections = i2;
    }

    public final void scrollStop() {
        if (this.lastScrollStartMillis == 0) {
            return;
        }
        this.totalOpenedSec += (int) ((System.currentTimeMillis() - this.lastScrollStartMillis) / 1000);
        this.lastScrollStartMillis = 0L;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ArticleTocInteractionEventImpl extends MobileAppsEvent {
        public static final Companion Companion = new Companion();
        public final int numSections;
        public final int numberOfOpens;
        public final int numberOfSectionClicks;
        public final int pageId;
        public final int totalOpenSec;
        public final String wikiDb;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ArticleTocInteractionEventImpl(int i, int i2, int i3, int i4, int i5, int i6, String str, String str2, String str3, String str4, Event.Meta meta, boolean z) {
            super(i, meta, str, z, str2, str3);
            if (2016 != (i & 2016)) {
                TuplesKt.throwMissingFieldException(i, 2016, ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.wikiDb = str4;
            this.pageId = i2;
            this.numberOfOpens = i3;
            this.numberOfSectionClicks = i4;
            this.totalOpenSec = i5;
            this.numSections = i6;
        }

        public ArticleTocInteractionEventImpl(int i, int i2, int i3, int i4, int i5, String str) {
            super("android.article_toc_interaction");
            this.wikiDb = str;
            this.pageId = i;
            this.numberOfOpens = i2;
            this.numberOfSectionClicks = i3;
            this.totalOpenSec = i4;
            this.numSections = i5;
        }
    }
}
