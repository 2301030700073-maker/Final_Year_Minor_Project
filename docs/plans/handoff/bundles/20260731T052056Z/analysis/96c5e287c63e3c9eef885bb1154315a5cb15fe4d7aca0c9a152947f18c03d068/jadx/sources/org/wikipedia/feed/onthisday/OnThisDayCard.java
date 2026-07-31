package org.wikipedia.feed.onthisday;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.model.WikiSiteCard;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayCard extends WikiSiteCard {
    public final int age;
    public final Calendar date;
    public final List events;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayCard(List list, int i, WikiSite wikiSite) {
        super(wikiSite);
        wikiSite.getClass();
        this.events = list;
        this.age = i;
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.add(5, -i);
        this.date = calendar;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return (this.wiki.hashCode() + ((int) (this.date.getTime().getTime() / 86400000))) - 565456709;
    }

    @Override // org.wikipedia.feed.model.Card
    public final String moduleKey() {
        return "ON_THIS_DAY";
    }
}
