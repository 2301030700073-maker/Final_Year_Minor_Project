package org.wikipedia.page;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.page.Protection;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageProperties implements Parcelable {
    public static final Parcelable.Creator<PageProperties> CREATOR = new PageTitle.Creator(6);
    public boolean canEdit;
    public final String descriptionSource;
    public final String displayTitle;
    public String editProtectionStatus;
    public final Location geo;
    public final boolean isMainPage;
    public final Date lastModified;
    public final int leadImageHeight;
    public final String leadImageName;
    public final String leadImageUrl;
    public final int leadImageWidth;
    public final Namespace namespace;
    public final int pageId;
    public Protection protection;
    public final long revisionId;
    public final String wikiBaseItem;

    public PageProperties(int i, Namespace namespace, long j, Date date, String str, String str2, boolean z, String str3, String str4, int i2, int i3, Location location, String str5, String str6, boolean z2) {
        namespace.getClass();
        str.getClass();
        str2.getClass();
        this.pageId = i;
        this.namespace = namespace;
        this.revisionId = j;
        this.lastModified = date;
        this.displayTitle = str;
        this.editProtectionStatus = str2;
        this.isMainPage = z;
        this.leadImageUrl = str3;
        this.leadImageName = str4;
        this.leadImageWidth = i2;
        this.leadImageHeight = i3;
        this.geo = location;
        this.wikiBaseItem = str5;
        this.descriptionSource = str6;
        this.canEdit = z2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PageProperties)) {
            return false;
        }
        PageProperties pageProperties = (PageProperties) obj;
        return this.pageId == pageProperties.pageId && this.namespace == pageProperties.namespace && this.revisionId == pageProperties.revisionId && this.lastModified.equals(pageProperties.lastModified) && Intrinsics.areEqual(this.displayTitle, pageProperties.displayTitle) && Intrinsics.areEqual(this.editProtectionStatus, pageProperties.editProtectionStatus) && this.isMainPage == pageProperties.isMainPage && Intrinsics.areEqual(this.leadImageUrl, pageProperties.leadImageUrl) && Intrinsics.areEqual(this.leadImageName, pageProperties.leadImageName) && this.leadImageWidth == pageProperties.leadImageWidth && this.leadImageHeight == pageProperties.leadImageHeight && Intrinsics.areEqual(this.geo, pageProperties.geo) && Intrinsics.areEqual(this.wikiBaseItem, pageProperties.wikiBaseItem) && Intrinsics.areEqual(this.descriptionSource, pageProperties.descriptionSource) && this.canEdit == pageProperties.canEdit;
    }

    public final int hashCode() {
        int hashCode = (this.namespace.hashCode() + (this.pageId * 31)) * 31;
        long j = this.revisionId;
        int m = (Animation.CC.m(Animation.CC.m((this.lastModified.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31)) * 31, 31, this.displayTitle), 31, this.editProtectionStatus) + (this.isMainPage ? 1231 : 1237)) * 31;
        String str = this.leadImageUrl;
        int hashCode2 = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.leadImageName;
        int hashCode3 = (((((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.leadImageWidth) * 31) + this.leadImageHeight) * 31;
        Location location = this.geo;
        int hashCode4 = (hashCode3 + (location == null ? 0 : location.hashCode())) * 31;
        String str3 = this.wikiBaseItem;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.descriptionSource;
        return ((hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31) + (this.canEdit ? 1231 : 1237);
    }

    public final String toString() {
        String str = this.editProtectionStatus;
        boolean z = this.canEdit;
        StringBuilder sb = new StringBuilder("PageProperties(pageId=");
        sb.append(this.pageId);
        sb.append(", namespace=");
        sb.append(this.namespace);
        sb.append(", revisionId=");
        sb.append(this.revisionId);
        sb.append(", lastModified=");
        sb.append(this.lastModified);
        Modifier.CC.m(sb, ", displayTitle=", this.displayTitle, ", editProtectionStatus=", str);
        sb.append(", isMainPage=");
        sb.append(this.isMainPage);
        sb.append(", leadImageUrl=");
        sb.append(this.leadImageUrl);
        sb.append(", leadImageName=");
        sb.append(this.leadImageName);
        sb.append(", leadImageWidth=");
        sb.append(this.leadImageWidth);
        sb.append(", leadImageHeight=");
        sb.append(this.leadImageHeight);
        sb.append(", geo=");
        sb.append(this.geo);
        Modifier.CC.m(sb, ", wikiBaseItem=", this.wikiBaseItem, ", descriptionSource=", this.descriptionSource);
        sb.append(", canEdit=");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.pageId);
        parcel.writeString(this.namespace.name());
        parcel.writeLong(this.revisionId);
        parcel.writeLong(this.lastModified.getTime());
        parcel.writeString(this.displayTitle);
        parcel.writeString(this.editProtectionStatus);
        parcel.writeInt(this.isMainPage ? 1 : 0);
        parcel.writeString(this.leadImageUrl);
        parcel.writeString(this.leadImageName);
        parcel.writeInt(this.leadImageWidth);
        parcel.writeInt(this.leadImageHeight);
        parcel.writeParcelable(this.geo, i);
        parcel.writeString(this.wikiBaseItem);
        parcel.writeString(this.descriptionSource);
        parcel.writeInt(this.canEdit ? 1 : 0);
    }
}
