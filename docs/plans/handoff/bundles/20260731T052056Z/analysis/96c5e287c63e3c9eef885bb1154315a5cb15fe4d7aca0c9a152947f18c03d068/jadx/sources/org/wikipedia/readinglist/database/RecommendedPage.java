package org.wikipedia.readinglist.database;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.Namespace;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedPage {
    public final String apiTitle;
    public final String description;
    public final String displayTitle;
    public String extract;
    public final int id;
    public final String lang;
    public final Namespace namespace;
    public int status;
    public final String thumbUrl;
    public final Date timestamp;
    public final WikiSite wiki;

    public RecommendedPage(int i, WikiSite wikiSite, String str, Namespace namespace, Date date, String str2, String str3, String str4, String str5, int i2, String str6) {
        wikiSite.getClass();
        str.getClass();
        namespace.getClass();
        str2.getClass();
        str3.getClass();
        this.id = i;
        this.wiki = wikiSite;
        this.lang = str;
        this.namespace = namespace;
        this.timestamp = date;
        this.apiTitle = str2;
        this.displayTitle = str3;
        this.description = str4;
        this.thumbUrl = str5;
        this.status = i2;
        this.extract = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendedPage)) {
            return false;
        }
        RecommendedPage recommendedPage = (RecommendedPage) obj;
        return this.id == recommendedPage.id && Intrinsics.areEqual(this.wiki, recommendedPage.wiki) && Intrinsics.areEqual(this.lang, recommendedPage.lang) && this.namespace == recommendedPage.namespace && this.timestamp.equals(recommendedPage.timestamp) && Intrinsics.areEqual(this.apiTitle, recommendedPage.apiTitle) && Intrinsics.areEqual(this.displayTitle, recommendedPage.displayTitle) && Intrinsics.areEqual(this.description, recommendedPage.description) && Intrinsics.areEqual(this.thumbUrl, recommendedPage.thumbUrl) && this.status == recommendedPage.status && Intrinsics.areEqual(this.extract, recommendedPage.extract);
    }

    public final int hashCode() {
        int m = Animation.CC.m(Animation.CC.m((this.timestamp.hashCode() + ((this.namespace.hashCode() + Animation.CC.m((this.wiki.hashCode() + (this.id * 31)) * 31, 31, this.lang)) * 31)) * 31, 31, this.apiTitle), 31, this.displayTitle);
        String str = this.description;
        int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.thumbUrl;
        int hashCode2 = (((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.status) * 31;
        String str3 = this.extract;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        int i = this.status;
        String str = this.extract;
        StringBuilder sb = new StringBuilder("RecommendedPage(id=");
        sb.append(this.id);
        sb.append(", wiki=");
        sb.append(this.wiki);
        sb.append(", lang=");
        sb.append(this.lang);
        sb.append(", namespace=");
        sb.append(this.namespace);
        sb.append(", timestamp=");
        sb.append(this.timestamp);
        sb.append(", apiTitle=");
        sb.append(this.apiTitle);
        sb.append(", displayTitle=");
        Modifier.CC.m(sb, this.displayTitle, ", description=", this.description, ", thumbUrl=");
        sb.append(this.thumbUrl);
        sb.append(", status=");
        sb.append(i);
        sb.append(", extract=");
        return Animation.CC.m(sb, str, ")");
    }
}
