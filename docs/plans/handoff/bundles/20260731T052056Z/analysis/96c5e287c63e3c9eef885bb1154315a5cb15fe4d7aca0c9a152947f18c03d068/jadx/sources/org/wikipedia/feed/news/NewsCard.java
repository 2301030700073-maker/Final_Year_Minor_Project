package org.wikipedia.feed.news;

import j$.util.DesugarTimeZone;
import java.util.Calendar;
import java.util.List;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.model.WikiSiteCard;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NewsCard extends WikiSiteCard {
    public final int age;
    public final List news;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewsCard(List list, int i, WikiSite wikiSite) {
        super(wikiSite);
        list.getClass();
        wikiSite.getClass();
        this.news = list;
        this.age = i;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        Calendar calendar = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
        calendar.add(5, -this.age);
        return this.wiki.hashCode() + ((int) (calendar.getTime().getTime() / 86400000)) + 2392787;
    }

    @Override // org.wikipedia.feed.model.Card
    public final String moduleKey() {
        return "NEWS";
    }
}
