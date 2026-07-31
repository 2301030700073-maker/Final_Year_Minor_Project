package org.wikipedia.page;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class PageBackStackItem {
    public static final Companion Companion = new Companion();
    public HistoryEntry historyEntry;
    public int scrollY;
    public PageTitle title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return PageBackStackItem$$serializer.INSTANCE;
        }
    }

    public PageBackStackItem(PageTitle pageTitle, HistoryEntry historyEntry) {
        pageTitle.getClass();
        historyEntry.getClass();
        this.title = pageTitle;
        this.historyEntry = historyEntry;
        this.scrollY = 0;
    }
}
