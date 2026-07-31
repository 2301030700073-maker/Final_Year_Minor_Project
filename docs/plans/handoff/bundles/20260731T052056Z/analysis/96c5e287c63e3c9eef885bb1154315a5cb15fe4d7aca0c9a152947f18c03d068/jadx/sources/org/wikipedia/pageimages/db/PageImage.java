package org.wikipedia.pageimages.db;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageImage implements Parcelable {
    public static final Parcelable.Creator<PageImage> CREATOR = new PageTitle.Creator(7);
    public final String apiTitle;
    public String description;
    public double geoLat;
    public double geoLon;
    public String imageName;
    public final String lang;
    public final String namespace;
    public int timeSpentSec;

    public PageImage(String str, String str2, String str3, String str4, String str5, int i, double d, double d2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.lang = str;
        this.namespace = str2;
        this.apiTitle = str3;
        this.imageName = str4;
        this.description = str5;
        this.timeSpentSec = i;
        this.geoLat = d;
        this.geoLon = d2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PageImage)) {
            return false;
        }
        PageImage pageImage = (PageImage) obj;
        return Intrinsics.areEqual(this.lang, pageImage.lang) && Intrinsics.areEqual(this.namespace, pageImage.namespace) && Intrinsics.areEqual(this.apiTitle, pageImage.apiTitle) && Intrinsics.areEqual(this.imageName, pageImage.imageName) && Intrinsics.areEqual(this.description, pageImage.description) && this.timeSpentSec == pageImage.timeSpentSec && Double.compare(this.geoLat, pageImage.geoLat) == 0 && Double.compare(this.geoLon, pageImage.geoLon) == 0;
    }

    public final int hashCode() {
        int m = Animation.CC.m(Animation.CC.m(this.lang.hashCode() * 31, 31, this.namespace), 31, this.apiTitle);
        String str = this.imageName;
        int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.description;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.timeSpentSec) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.geoLat);
        long doubleToLongBits2 = Double.doubleToLongBits(this.geoLon);
        return ((hashCode2 + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public final String toString() {
        String str = this.imageName;
        String str2 = this.description;
        int i = this.timeSpentSec;
        double d = this.geoLat;
        double d2 = this.geoLon;
        StringBuilder m352m = Modifier.CC.m352m("PageImage(lang=", this.lang, ", namespace=", this.namespace, ", apiTitle=");
        Modifier.CC.m(m352m, this.apiTitle, ", imageName=", str, ", description=");
        m352m.append(str2);
        m352m.append(", timeSpentSec=");
        m352m.append(i);
        m352m.append(", geoLat=");
        m352m.append(d);
        m352m.append(", geoLon=");
        m352m.append(d2);
        m352m.append(")");
        return m352m.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.lang);
        parcel.writeString(this.namespace);
        parcel.writeString(this.apiTitle);
        parcel.writeString(this.imageName);
        parcel.writeString(this.description);
        parcel.writeInt(this.timeSpentSec);
        parcel.writeDouble(this.geoLat);
        parcel.writeDouble(this.geoLon);
    }
}
