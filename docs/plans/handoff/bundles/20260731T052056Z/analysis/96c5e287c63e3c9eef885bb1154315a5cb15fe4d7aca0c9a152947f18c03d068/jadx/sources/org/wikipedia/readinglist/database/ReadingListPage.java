package org.wikipedia.readinglist.database;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.io.Serializable;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListPage implements Serializable {
    public final transient SynchronizedLazyImpl accentInvariantTitle$delegate;
    public final String apiTitle;
    public long atime;
    public String description;
    public String displayTitle;
    public transient int downloadProgress;
    public long id;
    public final String lang;
    public long listId;
    public long mtime;
    public final Namespace namespace;
    public boolean offline;
    public long remoteId;
    public final long revId;
    public transient boolean selected;
    public long sizeBytes;
    public long status;
    public String thumbUrl;
    public final WikiSite wiki;

    public ReadingListPage(WikiSite wikiSite, Namespace namespace, String str, String str2, String str3, String str4, long j, long j2, long j3, long j4, boolean z, long j5, long j6, String str5, long j7, long j8) {
        wikiSite.getClass();
        namespace.getClass();
        str.getClass();
        str2.getClass();
        str5.getClass();
        this.wiki = wikiSite;
        this.namespace = namespace;
        this.displayTitle = str;
        this.apiTitle = str2;
        this.description = str3;
        this.thumbUrl = str4;
        this.listId = j;
        this.id = j2;
        this.mtime = j3;
        this.atime = j4;
        this.offline = z;
        this.status = j5;
        this.sizeBytes = j6;
        this.lang = str5;
        this.revId = j7;
        this.remoteId = j8;
        this.accentInvariantTitle$delegate = new SynchronizedLazyImpl(new WikiGames$$ExternalSyntheticLambda0(22, this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadingListPage)) {
            return false;
        }
        ReadingListPage readingListPage = (ReadingListPage) obj;
        return Intrinsics.areEqual(this.wiki, readingListPage.wiki) && this.namespace == readingListPage.namespace && Intrinsics.areEqual(this.displayTitle, readingListPage.displayTitle) && Intrinsics.areEqual(this.apiTitle, readingListPage.apiTitle) && Intrinsics.areEqual(this.description, readingListPage.description) && Intrinsics.areEqual(this.thumbUrl, readingListPage.thumbUrl) && this.listId == readingListPage.listId && this.id == readingListPage.id && this.mtime == readingListPage.mtime && this.atime == readingListPage.atime && this.offline == readingListPage.offline && this.status == readingListPage.status && this.sizeBytes == readingListPage.sizeBytes && Intrinsics.areEqual(this.lang, readingListPage.lang) && this.revId == readingListPage.revId && this.remoteId == readingListPage.remoteId;
    }

    public final String getAccentInvariantTitle() {
        Object value = this.accentInvariantTitle$delegate.getValue();
        value.getClass();
        return (String) value;
    }

    public final boolean getSaving() {
        if (!this.offline) {
            return false;
        }
        long j = this.status;
        return j == 0 || j == 3;
    }

    public final int hashCode() {
        int m = Animation.CC.m(Animation.CC.m((this.namespace.hashCode() + (this.wiki.hashCode() * 31)) * 31, 31, this.displayTitle), 31, this.apiTitle);
        String str = this.description;
        int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.thumbUrl;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j = this.listId;
        int i = (((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.id;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.mtime;
        int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.atime;
        int i4 = (((i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31) + (this.offline ? 1231 : 1237)) * 31;
        long j5 = this.status;
        int i5 = (i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.sizeBytes;
        int m2 = Animation.CC.m((i5 + ((int) (j6 ^ (j6 >>> 32)))) * 31, 31, this.lang);
        long j7 = this.revId;
        long j8 = this.remoteId;
        return ((m2 + ((int) (j7 ^ (j7 >>> 32)))) * 31) + ((int) (j8 ^ (j8 >>> 32)));
    }

    public final String toString() {
        String str = this.displayTitle;
        String str2 = this.description;
        String str3 = this.thumbUrl;
        long j = this.listId;
        long j2 = this.id;
        long j3 = this.mtime;
        long j4 = this.atime;
        boolean z = this.offline;
        long j5 = this.status;
        long j6 = this.sizeBytes;
        long j7 = this.remoteId;
        StringBuilder sb = new StringBuilder("ReadingListPage(wiki=");
        sb.append(this.wiki);
        sb.append(", namespace=");
        sb.append(this.namespace);
        sb.append(", displayTitle=");
        Modifier.CC.m(sb, str, ", apiTitle=", this.apiTitle, ", description=");
        Modifier.CC.m(sb, str2, ", thumbUrl=", str3, ", listId=");
        sb.append(j);
        sb.append(", id=");
        sb.append(j2);
        sb.append(", mtime=");
        sb.append(j3);
        sb.append(", atime=");
        sb.append(j4);
        sb.append(", offline=");
        sb.append(z);
        sb.append(", status=");
        sb.append(j5);
        sb.append(", sizeBytes=");
        sb.append(j6);
        sb.append(", lang=");
        sb.append(this.lang);
        sb.append(", revId=");
        sb.append(this.revId);
        sb.append(", remoteId=");
        sb.append(j7);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReadingListPage(WikiSite wikiSite, Namespace namespace, String str, String str2, String str3, String str4, String str5, int i) {
        this(wikiSite, namespace, str, str2, str3, str4, -1L, 0L, 0L, 0L, Prefs.isDownloadingReadingListArticlesEnabled(), 0L, 0L, str5, 0L, 0L);
        Prefs prefs = Prefs.INSTANCE;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ReadingListPage(PageTitle pageTitle) {
        this(pageTitle.wikiSite, pageTitle.namespace(), pageTitle.getDisplayText(), pageTitle.getPrefixedText(), pageTitle.description, pageTitle.thumbUrl, pageTitle.wikiSite.languageCode, 57280);
        pageTitle.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        this.mtime = currentTimeMillis;
        this.atime = currentTimeMillis;
    }
}
