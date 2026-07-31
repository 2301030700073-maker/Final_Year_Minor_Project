package org.wikipedia.feed.news;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NewsViewModel extends ViewModel {
    public final NewsItem item;
    public final WikiSite wiki;

    public NewsViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("item");
        obj.getClass();
        this.item = (NewsItem) obj;
        Object obj2 = savedStateHandle.get("wikiSite");
        obj2.getClass();
        this.wiki = (WikiSite) obj2;
    }
}
