package org.wikipedia.history.db;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoryEntryWithImage {
    public final String apiTitle;
    public final String authority;
    public final String description;
    public final String displayTitle;
    public final Double geoLat;
    public final Double geoLon;
    public final long id;
    public final String imageName;
    public final String lang;
    public final String namespace;
    public final int source;
    public final int timeSpentSec;
    public final Date timestamp;

    public HistoryEntryWithImage(String str, String str2, String str3, String str4, String str5, Date date, int i, int i2, String str6, String str7, Double d, Double d2, long j) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.authority = str;
        this.lang = str2;
        this.apiTitle = str3;
        this.displayTitle = str4;
        this.namespace = str5;
        this.timestamp = date;
        this.source = i;
        this.timeSpentSec = i2;
        this.imageName = str6;
        this.description = str7;
        this.geoLat = d;
        this.geoLon = d2;
        this.id = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HistoryEntryWithImage)) {
            return false;
        }
        HistoryEntryWithImage historyEntryWithImage = (HistoryEntryWithImage) obj;
        return Intrinsics.areEqual(this.authority, historyEntryWithImage.authority) && Intrinsics.areEqual(this.lang, historyEntryWithImage.lang) && Intrinsics.areEqual(this.apiTitle, historyEntryWithImage.apiTitle) && Intrinsics.areEqual(this.displayTitle, historyEntryWithImage.displayTitle) && Intrinsics.areEqual(this.namespace, historyEntryWithImage.namespace) && this.timestamp.equals(historyEntryWithImage.timestamp) && this.source == historyEntryWithImage.source && this.timeSpentSec == historyEntryWithImage.timeSpentSec && Intrinsics.areEqual(this.imageName, historyEntryWithImage.imageName) && Intrinsics.areEqual(this.description, historyEntryWithImage.description) && Intrinsics.areEqual(this.geoLat, historyEntryWithImage.geoLat) && Intrinsics.areEqual(this.geoLon, historyEntryWithImage.geoLon) && this.id == historyEntryWithImage.id;
    }

    public final int hashCode() {
        int hashCode = (((((this.timestamp.hashCode() + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(this.authority.hashCode() * 31, 31, this.lang), 31, this.apiTitle), 31, this.displayTitle), 31, this.namespace)) * 31) + this.source) * 31) + this.timeSpentSec) * 31;
        String str = this.imageName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.description;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Double d = this.geoLat;
        int hashCode4 = (hashCode3 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.geoLon;
        int hashCode5 = d2 != null ? d2.hashCode() : 0;
        long j = this.id;
        return ((hashCode4 + hashCode5) * 31) + ((int) ((j >>> 32) ^ j));
    }

    public final String toString() {
        StringBuilder m352m = Modifier.CC.m352m("HistoryEntryWithImage(authority=", this.authority, ", lang=", this.lang, ", apiTitle=");
        Modifier.CC.m(m352m, this.apiTitle, ", displayTitle=", this.displayTitle, ", namespace=");
        m352m.append(this.namespace);
        m352m.append(", timestamp=");
        m352m.append(this.timestamp);
        m352m.append(", source=");
        m352m.append(this.source);
        m352m.append(", timeSpentSec=");
        m352m.append(this.timeSpentSec);
        m352m.append(", imageName=");
        Modifier.CC.m(m352m, this.imageName, ", description=", this.description, ", geoLat=");
        m352m.append(this.geoLat);
        m352m.append(", geoLon=");
        m352m.append(this.geoLon);
        m352m.append(", id=");
        m352m.append(this.id);
        m352m.append(")");
        return m352m.toString();
    }
}
