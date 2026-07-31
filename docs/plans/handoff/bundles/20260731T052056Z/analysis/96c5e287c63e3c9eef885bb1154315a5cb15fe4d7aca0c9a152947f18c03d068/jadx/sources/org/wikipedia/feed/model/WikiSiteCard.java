package org.wikipedia.feed.model;

import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WikiSiteCard extends Card {
    public final WikiSite wiki;

    public WikiSiteCard(WikiSite wikiSite) {
        wikiSite.getClass();
        this.wiki = wikiSite;
    }
}
