package org.wikipedia.dataclient.page;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class PageSummary implements Parcelable {
    public final Location coordinates;
    public String description;
    public final String descriptionSource;
    public final String extract;
    public final String extractHtml;
    public final String lang;
    public final NamespaceContainer namespace;
    public final Thumbnail originalImage;
    public final int pageId;
    public final long rank;
    public final long revision;
    public final Thumbnail thumbnail;
    public final String timestamp;
    public final Titles titles;
    public final String type;
    public final List viewHistory;
    public final long views;
    public final String wikiBaseItem;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<PageSummary> CREATOR = new DefaultStyle.AnonymousClass1(18);
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(16))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return PageSummary$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PageSummary(int i, NamespaceContainer namespaceContainer, Titles titles, String str, Thumbnail thumbnail, String str2, String str3, Thumbnail thumbnail2, String str4, String str5, String str6, Location location, String str7, int i2, long j, String str8, long j2, long j3, List list) {
        if ((i & 1) == 0) {
            this.namespace = null;
        } else {
            this.namespace = namespaceContainer;
        }
        if ((i & 2) == 0) {
            this.titles = null;
        } else {
            this.titles = titles;
        }
        if ((i & 4) == 0) {
            this.lang = "";
        } else {
            this.lang = str;
        }
        if ((i & 8) == 0) {
            this.thumbnail = null;
        } else {
            this.thumbnail = thumbnail;
        }
        if ((i & 16) == 0) {
            this.extract = null;
        } else {
            this.extract = str2;
        }
        if ((i & 32) == 0) {
            this.description = null;
        } else {
            this.description = str3;
        }
        if ((i & 64) == 0) {
            this.originalImage = null;
        } else {
            this.originalImage = thumbnail2;
        }
        if ((i & 128) == 0) {
            this.wikiBaseItem = null;
        } else {
            this.wikiBaseItem = str4;
        }
        if ((i & 256) == 0) {
            this.extractHtml = null;
        } else {
            this.extractHtml = str5;
        }
        if ((i & 512) == 0) {
            this.descriptionSource = "";
        } else {
            this.descriptionSource = str6;
        }
        if ((i & 1024) == 0) {
            this.coordinates = null;
        } else {
            this.coordinates = location;
        }
        if ((i & 2048) == 0) {
            this.type = "standard";
        } else {
            this.type = str7;
        }
        this.pageId = (i & 4096) == 0 ? 0 : i2;
        if ((i & 8192) == 0) {
            this.revision = 0L;
        } else {
            this.revision = j;
        }
        if ((i & 16384) == 0) {
            this.timestamp = "";
        } else {
            this.timestamp = str8;
        }
        if ((32768 & i) == 0) {
            this.views = 0L;
        } else {
            this.views = j2;
        }
        if ((65536 & i) == 0) {
            this.rank = 0L;
        } else {
            this.rank = j3;
        }
        if ((i & 131072) == 0) {
            this.viewHistory = null;
        } else {
            this.viewHistory = list;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getApiTitle() {
        Titles titles = this.titles;
        String str = titles != null ? titles.canonical : null;
        return str == null ? "" : str;
    }

    public final String getDisplayTitle() {
        Titles titles = this.titles;
        String str = titles != null ? titles.display : null;
        return str == null ? "" : str;
    }

    public final HistoryEntry getHistoryEntry(WikiSite wikiSite, int i) {
        wikiSite.getClass();
        return new HistoryEntry(i, getPageTitle(wikiSite));
    }

    public final String getLeadImageName() {
        String thumbnailUrl = getThumbnailUrl();
        if (thumbnailUrl == null) {
            return null;
        }
        List split$default = StringsKt.split$default(thumbnailUrl, new String[]{"/"});
        return (!StringsKt.contains(thumbnailUrl, "/thumb/", false) || split$default.size() <= 2) ? (String) CollectionsKt.last(split$default) : (String) split$default.get(split$default.size() - 2);
    }

    public final PageTitle getPageTitle(WikiSite wikiSite) {
        wikiSite.getClass();
        PageTitle pageTitle = new PageTitle(getApiTitle(), wikiSite, getThumbnailUrl(), this.description, getDisplayTitle());
        pageTitle.extract = this.extract;
        return pageTitle;
    }

    public final String getThumbnailUrl() {
        Thumbnail thumbnail = this.thumbnail;
        if (thumbnail != null) {
            return thumbnail.source;
        }
        return null;
    }

    public final String toString() {
        return getDisplayTitle();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        NamespaceContainer namespaceContainer = this.namespace;
        if (namespaceContainer == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            namespaceContainer.writeToParcel(parcel, i);
        }
        Titles titles = this.titles;
        if (titles == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            titles.writeToParcel(parcel, i);
        }
        parcel.writeString(this.lang);
        Thumbnail thumbnail = this.thumbnail;
        if (thumbnail == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            thumbnail.writeToParcel(parcel, i);
        }
        parcel.writeString(this.extract);
        parcel.writeString(this.description);
        Thumbnail thumbnail2 = this.originalImage;
        if (thumbnail2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            thumbnail2.writeToParcel(parcel, i);
        }
        parcel.writeString(this.wikiBaseItem);
        parcel.writeString(this.extractHtml);
        parcel.writeString(this.descriptionSource);
        parcel.writeParcelable(this.coordinates, i);
        parcel.writeString(this.type);
        parcel.writeInt(this.pageId);
        parcel.writeLong(this.revision);
        parcel.writeString(this.timestamp);
        parcel.writeLong(this.views);
        parcel.writeLong(this.rank);
        List list = this.viewHistory;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ViewHistory) it.next()).writeToParcel(parcel, i);
        }
    }

    public PageSummary(NamespaceContainer namespaceContainer, Titles titles, String str, Thumbnail thumbnail, String str2, String str3, Thumbnail thumbnail2, String str4, String str5, String str6, Location location, String str7, int i, long j, String str8, long j2, long j3, ArrayList arrayList) {
        str.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        this.namespace = namespaceContainer;
        this.titles = titles;
        this.lang = str;
        this.thumbnail = thumbnail;
        this.extract = str2;
        this.description = str3;
        this.originalImage = thumbnail2;
        this.wikiBaseItem = str4;
        this.extractHtml = str5;
        this.descriptionSource = str6;
        this.coordinates = location;
        this.type = str7;
        this.pageId = i;
        this.revision = j;
        this.timestamp = str8;
        this.views = j2;
        this.rank = j3;
        this.viewHistory = arrayList;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class NamespaceContainer implements Parcelable {
        public final int id;
        public final String text;
        public static final Companion Companion = new Companion();
        public static final Parcelable.Creator<NamespaceContainer> CREATOR = new DefaultStyle.AnonymousClass1(19);

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return PageSummary$NamespaceContainer$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ NamespaceContainer(int i, int i2, String str) {
            this.id = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.text = "";
            } else {
                this.text = str;
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NamespaceContainer)) {
                return false;
            }
            NamespaceContainer namespaceContainer = (NamespaceContainer) obj;
            return this.id == namespaceContainer.id && Intrinsics.areEqual(this.text, namespaceContainer.text);
        }

        public final int hashCode() {
            return this.text.hashCode() + (this.id * 31);
        }

        public final String toString() {
            return "NamespaceContainer(id=" + this.id + ", text=" + this.text + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.id);
            parcel.writeString(this.text);
        }

        public NamespaceContainer(int i, String str) {
            str.getClass();
            this.id = i;
            this.text = str;
        }
    }

    public /* synthetic */ PageSummary(Titles titles, String str, Thumbnail thumbnail, String str2, String str3, int i) {
        this(null, (i & 2) != 0 ? null : titles, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? null : thumbnail, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, null, null, null, "", null, "standard", 0, 0L, "", 0L, 0L, null);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Titles implements Parcelable {
        public final String canonical;
        public final String display;
        public static final Companion Companion = new Companion();
        public static final Parcelable.Creator<Titles> CREATOR = new DefaultStyle.AnonymousClass1(21);

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return PageSummary$Titles$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Titles(int i, String str, String str2) {
            if (3 != (i & 3)) {
                TuplesKt.throwMissingFieldException(i, 3, PageSummary$Titles$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.canonical = str;
            this.display = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.canonical);
            parcel.writeString(this.display);
        }

        public Titles(String str, String str2) {
            this.canonical = str;
            this.display = str2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ViewHistory implements Parcelable {
        public final String date;
        public final float views;
        public static final Companion Companion = new Companion();
        public static final Parcelable.Creator<ViewHistory> CREATOR = new DefaultStyle.AnonymousClass1(22);

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return PageSummary$ViewHistory$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ViewHistory(int i, String str, float f) {
            if (3 != (i & 3)) {
                TuplesKt.throwMissingFieldException(i, 3, PageSummary$ViewHistory$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.date = str;
            this.views = f;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.date);
            parcel.writeFloat(this.views);
        }

        public ViewHistory(String str, float f) {
            str.getClass();
            this.date = str;
            this.views = f;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageSummary(String str, String str2, String str3, String str4, String str5, String str6) {
        this(new Titles(str2, str), str6, new Thumbnail(str5, 0, 0), str4, str3, 262081);
        str.getClass();
        str2.getClass();
        str6.getClass();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Thumbnail implements Parcelable {
        public final int height;
        public final String source;
        public final int width;
        public static final Companion Companion = new Companion();
        public static final Parcelable.Creator<Thumbnail> CREATOR = new DefaultStyle.AnonymousClass1(20);

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return PageSummary$Thumbnail$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Thumbnail(int i, int i2, int i3, String str) {
            if (7 != (i & 7)) {
                TuplesKt.throwMissingFieldException(i, 7, PageSummary$Thumbnail$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.source = str;
            this.width = i2;
            this.height = i3;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.source);
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
        }

        public Thumbnail(String str, int i, int i2) {
            this.source = str;
            this.width = i;
            this.height = i2;
        }
    }
}
