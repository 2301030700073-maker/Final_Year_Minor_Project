package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleFindInPageInteractionEvent extends TimedEvent {
    public String findText = "";
    public int numFindNext;
    public int numFindPrev;
    public int pageHeight;
    public final int pageId;

    public ArticleFindInPageInteractionEvent(int i) {
        this.pageId = i;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ArticleFindInPageInteractionEventImpl extends MobileAppsEvent {
        public static final Companion Companion = new Companion();
        public final int findNextClicksCount;
        public final int findPrevClicksCount;
        public final String findText;
        public final int pageHeight;
        public final int pageId;
        public final int timeSpentMs;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ArticleFindInPageInteractionEventImpl(int i, int i2, int i3, int i4, int i5, int i6, String str, String str2, String str3, String str4, Event.Meta meta, boolean z) {
            super(i, meta, str, z, str2, str3);
            if (2016 != (i & 2016)) {
                TuplesKt.throwMissingFieldException(i, 2016, ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.pageId = i2;
            this.findText = str4;
            this.findNextClicksCount = i3;
            this.findPrevClicksCount = i4;
            this.pageHeight = i5;
            this.timeSpentMs = i6;
        }

        public ArticleFindInPageInteractionEventImpl(int i, int i2, int i3, int i4, int i5, String str) {
            super("android.find_in_page_interaction");
            this.pageId = i;
            this.findText = str;
            this.findNextClicksCount = i2;
            this.findPrevClicksCount = i3;
            this.pageHeight = i4;
            this.timeSpentMs = i5;
        }
    }
}
