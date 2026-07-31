package org.wikipedia.suggestededits;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.gallery.ExtMetadata;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ImageUrlUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageSummaryForEdit implements Parcelable {
    public static final Parcelable.Creator<PageSummaryForEdit> CREATOR = new Creator();
    public final String description;
    public final String displayTitle;
    public final String extract;
    public String extractHtml;
    public final String lang;
    public ExtMetadata metadata;
    public final PageTitle pageTitle;
    public final String thumbnailUrl;
    public String timestamp;
    public final String title;
    public String user;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PageSummaryForEdit(parcel.readString(), parcel.readString(), PageTitle.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : ExtMetadata.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new PageSummaryForEdit[i];
        }
    }

    public /* synthetic */ PageSummaryForEdit(String str, String str2, PageTitle pageTitle, String str3, String str4, String str5, String str6, String str7, int i) {
        this(str, str2, pageTitle, str3, str4, str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, null, null, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PageSummaryForEdit)) {
            return false;
        }
        PageSummaryForEdit pageSummaryForEdit = (PageSummaryForEdit) obj;
        return Intrinsics.areEqual(this.title, pageSummaryForEdit.title) && Intrinsics.areEqual(this.lang, pageSummaryForEdit.lang) && Intrinsics.areEqual(this.pageTitle, pageSummaryForEdit.pageTitle) && Intrinsics.areEqual(this.displayTitle, pageSummaryForEdit.displayTitle) && Intrinsics.areEqual(this.description, pageSummaryForEdit.description) && Intrinsics.areEqual(this.thumbnailUrl, pageSummaryForEdit.thumbnailUrl) && Intrinsics.areEqual(this.extract, pageSummaryForEdit.extract) && Intrinsics.areEqual(this.extractHtml, pageSummaryForEdit.extractHtml) && Intrinsics.areEqual(this.timestamp, pageSummaryForEdit.timestamp) && Intrinsics.areEqual(this.user, pageSummaryForEdit.user) && Intrinsics.areEqual(this.metadata, pageSummaryForEdit.metadata);
    }

    public final String getPreferredSizeThumbnailUrl() {
        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
        String str = this.thumbnailUrl;
        str.getClass();
        return ImageUrlUtil.getUrlForPreferredSize(960, str);
    }

    public final int hashCode() {
        int m = Animation.CC.m((this.pageTitle.hashCode() + Animation.CC.m(this.title.hashCode() * 31, 31, this.lang)) * 31, 31, this.displayTitle);
        String str = this.description;
        int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.thumbnailUrl;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.extract;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.extractHtml;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.timestamp;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.user;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        ExtMetadata extMetadata = this.metadata;
        return hashCode6 + (extMetadata != null ? extMetadata.hashCode() : 0);
    }

    public final String toString() {
        String str = this.extractHtml;
        String str2 = this.timestamp;
        String str3 = this.user;
        ExtMetadata extMetadata = this.metadata;
        StringBuilder m352m = Modifier.CC.m352m("PageSummaryForEdit(title=", this.title, ", lang=", this.lang, ", pageTitle=");
        m352m.append(this.pageTitle);
        m352m.append(", displayTitle=");
        m352m.append(this.displayTitle);
        m352m.append(", description=");
        Modifier.CC.m(m352m, this.description, ", thumbnailUrl=", this.thumbnailUrl, ", extract=");
        Modifier.CC.m(m352m, this.extract, ", extractHtml=", str, ", timestamp=");
        Modifier.CC.m(m352m, str2, ", user=", str3, ", metadata=");
        m352m.append(extMetadata);
        m352m.append(")");
        return m352m.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.title);
        parcel.writeString(this.lang);
        this.pageTitle.writeToParcel(parcel, i);
        parcel.writeString(this.displayTitle);
        parcel.writeString(this.description);
        parcel.writeString(this.thumbnailUrl);
        parcel.writeString(this.extract);
        parcel.writeString(this.extractHtml);
        parcel.writeString(this.timestamp);
        parcel.writeString(this.user);
        ExtMetadata extMetadata = this.metadata;
        if (extMetadata == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            extMetadata.writeToParcel(parcel, i);
        }
    }

    public PageSummaryForEdit(String str, String str2, PageTitle pageTitle, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ExtMetadata extMetadata) {
        str.getClass();
        str2.getClass();
        pageTitle.getClass();
        str3.getClass();
        this.title = str;
        this.lang = str2;
        this.pageTitle = pageTitle;
        this.displayTitle = str3;
        this.description = str4;
        this.thumbnailUrl = str5;
        this.extract = str6;
        this.extractHtml = str7;
        this.timestamp = str8;
        this.user = str9;
        this.metadata = extMetadata;
    }
}
