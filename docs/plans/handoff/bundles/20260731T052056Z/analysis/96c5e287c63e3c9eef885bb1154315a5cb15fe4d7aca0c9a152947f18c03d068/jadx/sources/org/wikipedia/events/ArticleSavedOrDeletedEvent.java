package org.wikipedia.events;

import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleSavedOrDeletedEvent {
    public final boolean isAdded;
    public final List pages;

    public ArticleSavedOrDeletedEvent(boolean z, ReadingListPage... readingListPageArr) {
        this.isAdded = z;
        this.pages = ArraysKt___ArraysKt.toList(readingListPageArr);
    }
}
