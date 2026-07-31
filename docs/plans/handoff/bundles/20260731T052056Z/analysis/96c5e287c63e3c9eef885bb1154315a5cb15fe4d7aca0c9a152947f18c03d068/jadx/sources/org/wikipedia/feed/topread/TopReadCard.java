package org.wikipedia.feed.topread;

import android.os.Parcel;
import android.os.Parcelable;
import j$.time.LocalDate;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.model.Card;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TopReadCard extends Card implements Parcelable {
    public static final Parcelable.Creator<TopReadCard> CREATOR = new DefaultStyle.AnonymousClass1(27);
    public final int age;
    public final TopRead articles;
    public final WikiSite site;

    public TopReadCard(TopRead topRead, int i, WikiSite wikiSite) {
        topRead.getClass();
        wikiSite.getClass();
        this.articles = topRead;
        this.age = i;
        this.site = wikiSite;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        this.articles.localDate$delegate.getValue().getClass();
        return (this.site.hashCode() + ((int) ((LocalDate) r0).toEpochDay())) - 153895328;
    }

    @Override // org.wikipedia.feed.model.Card
    public final String moduleKey() {
        return "TOP_READ";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        this.articles.writeToParcel(parcel, i);
        parcel.writeInt(this.age);
        this.site.writeToParcel(parcel, i);
    }
}
