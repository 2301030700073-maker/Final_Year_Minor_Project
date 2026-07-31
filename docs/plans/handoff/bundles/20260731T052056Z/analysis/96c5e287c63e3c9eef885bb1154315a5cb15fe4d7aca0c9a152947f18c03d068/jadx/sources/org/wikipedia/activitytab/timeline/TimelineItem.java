package org.wikipedia.activitytab.timeline;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimelineItem {
    public final ActivitySource activitySource;
    public final String apiTitle;
    public final String description;
    public final String displayTitle;
    public final long id;
    public final String lang;
    public final String namespace;
    public final int pageId;
    public final int source;
    public final String thumbnailUrl;
    public final Date timestamp;
    public final WikiSite wiki;

    public TimelineItem(long j, int i, String str, String str2, Date date, int i2, ActivitySource activitySource, String str3, String str4, String str5, String str6, WikiSite wikiSite) {
        date.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        wikiSite.getClass();
        this.id = j;
        this.pageId = i;
        this.description = str;
        this.thumbnailUrl = str2;
        this.timestamp = date;
        this.source = i2;
        this.activitySource = activitySource;
        this.lang = str3;
        this.apiTitle = str4;
        this.displayTitle = str5;
        this.namespace = str6;
        this.wiki = wikiSite;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimelineItem)) {
            return false;
        }
        TimelineItem timelineItem = (TimelineItem) obj;
        return this.id == timelineItem.id && this.pageId == timelineItem.pageId && Intrinsics.areEqual(this.description, timelineItem.description) && Intrinsics.areEqual(this.thumbnailUrl, timelineItem.thumbnailUrl) && Intrinsics.areEqual(this.timestamp, timelineItem.timestamp) && this.source == timelineItem.source && this.activitySource == timelineItem.activitySource && Intrinsics.areEqual(this.lang, timelineItem.lang) && Intrinsics.areEqual(this.apiTitle, timelineItem.apiTitle) && Intrinsics.areEqual(this.displayTitle, timelineItem.displayTitle) && Intrinsics.areEqual(this.namespace, timelineItem.namespace) && Intrinsics.areEqual(this.wiki, timelineItem.wiki);
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + this.pageId) * 31;
        String str = this.description;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.thumbnailUrl;
        int hashCode2 = (((this.timestamp.hashCode() + ((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31) + this.source) * 31;
        ActivitySource activitySource = this.activitySource;
        return this.wiki.hashCode() + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m((hashCode2 + (activitySource != null ? activitySource.hashCode() : 0)) * 31, 31, this.lang), 31, this.apiTitle), 31, this.displayTitle), 31, this.namespace);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TimelineItem(id=");
        sb.append(this.id);
        sb.append(", pageId=");
        sb.append(this.pageId);
        Modifier.CC.m(sb, ", description=", this.description, ", thumbnailUrl=", this.thumbnailUrl);
        sb.append(", timestamp=");
        sb.append(this.timestamp);
        sb.append(", source=");
        sb.append(this.source);
        sb.append(", activitySource=");
        sb.append(this.activitySource);
        sb.append(", lang=");
        sb.append(this.lang);
        Modifier.CC.m(sb, ", apiTitle=", this.apiTitle, ", displayTitle=", this.displayTitle);
        sb.append(", namespace=");
        sb.append(this.namespace);
        sb.append(", wiki=");
        sb.append(this.wiki);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ TimelineItem(long j, int i, String str, String str2, Date date, int i2, ActivitySource activitySource, String str3, String str4, WikiSite wikiSite, int i3) {
        this(j, i, str, str2, date, i2, activitySource, "", (i3 & 256) != 0 ? "" : str3, str4, "", wikiSite);
    }
}
