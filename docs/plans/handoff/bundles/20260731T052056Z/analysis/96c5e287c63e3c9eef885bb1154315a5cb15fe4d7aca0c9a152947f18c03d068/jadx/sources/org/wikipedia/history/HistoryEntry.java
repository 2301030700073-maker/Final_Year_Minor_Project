package org.wikipedia.history;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class HistoryEntry implements Parcelable {
    public String apiTitle;
    public String authority;
    public String displayTitle;
    public long id;
    public String lang;
    public String namespace;
    public PageTitle pageTitle;
    public long prevId;
    public String referrer;
    public int source;
    public Date timestamp;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<HistoryEntry> CREATOR = new PageTitle.Creator(5);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return HistoryEntry$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HistoryEntry(PageTitle pageTitle, int i, Date date) {
        this(pageTitle.wikiSite.authority(), pageTitle.wikiSite.languageCode, pageTitle.getText(), pageTitle.getDisplayText(), 0L, pageTitle.getNamespace(), date, i, 272);
        pageTitle.getClass();
        date.getClass();
        this.pageTitle = pageTitle;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final PageTitle getTitle() {
        PageTitle pageTitle = this.pageTitle;
        if (pageTitle == null) {
            pageTitle = new PageTitle(this.namespace, this.apiTitle, new WikiSite(this.authority, this.lang));
            pageTitle.setDisplayText(this.displayTitle);
            this.pageTitle = pageTitle;
        }
        pageTitle.getClass();
        return pageTitle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.authority);
        parcel.writeString(this.lang);
        parcel.writeString(this.apiTitle);
        parcel.writeString(this.displayTitle);
        parcel.writeLong(this.id);
        parcel.writeString(this.namespace);
        Date date = this.timestamp;
        date.getClass();
        parcel.writeLong(date.getTime());
        parcel.writeInt(this.source);
        parcel.writeLong(this.prevId);
    }

    public /* synthetic */ HistoryEntry(String str, String str2, String str3, String str4, long j, String str5, Date date, int i, int i2) {
        this(str, str2, str3, str4, (i2 & 16) != 0 ? 0L : j, str5, date, i, -1L);
    }

    public HistoryEntry(String str, String str2, String str3, String str4, long j, String str5, Date date, int i, long j2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        date.getClass();
        this.authority = str;
        this.lang = str2;
        this.apiTitle = str3;
        this.displayTitle = str4;
        this.id = j;
        this.namespace = str5;
        this.timestamp = date;
        this.source = i;
        this.prevId = j2;
    }

    public /* synthetic */ HistoryEntry(int i, PageTitle pageTitle) {
        this(pageTitle, i, new Date());
    }
}
