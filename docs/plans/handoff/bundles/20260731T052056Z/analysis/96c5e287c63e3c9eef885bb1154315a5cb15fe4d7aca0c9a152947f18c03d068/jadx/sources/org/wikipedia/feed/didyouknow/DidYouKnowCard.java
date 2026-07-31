package org.wikipedia.feed.didyouknow;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import java.util.List;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.model.Card;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DidYouKnowCard extends Card implements Parcelable {
    public static final Parcelable.Creator<DidYouKnowCard> CREATOR = new DefaultStyle.AnonymousClass1(23);
    public final String date;
    public final List items;
    public final WikiSite site;

    public DidYouKnowCard(List list, String str, WikiSite wikiSite) {
        list.getClass();
        str.getClass();
        wikiSite.getClass();
        this.items = list;
        this.date = str;
        this.site = wikiSite;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return this.site.hashCode() + this.date.hashCode() + 1879896747;
    }

    @Override // org.wikipedia.feed.model.Card
    public final String moduleKey() {
        return "DID_YOU_KNOW";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        List list = this.items;
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((DidYouKnowItem) it.next()).writeToParcel(parcel, i);
        }
        parcel.writeString(this.date);
        this.site.writeToParcel(parcel, i);
    }
}
