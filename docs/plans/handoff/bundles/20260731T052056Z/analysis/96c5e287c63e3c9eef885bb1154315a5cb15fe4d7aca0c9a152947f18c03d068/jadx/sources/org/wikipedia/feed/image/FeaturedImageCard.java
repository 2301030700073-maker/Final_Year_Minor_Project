package org.wikipedia.feed.image;

import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.model.WikiSiteCard;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FeaturedImageCard extends WikiSiteCard {
    public final int age;
    public final FeaturedImage featuredImage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeaturedImageCard(FeaturedImage featuredImage, int i, WikiSite wikiSite) {
        super(wikiSite);
        featuredImage.getClass();
        wikiSite.getClass();
        this.featuredImage = featuredImage;
        this.age = i;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return this.featuredImage.title.hashCode();
    }

    @Override // org.wikipedia.feed.model.Card
    public final String moduleKey() {
        return "FEATURED_IMAGE";
    }
}
