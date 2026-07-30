package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Object> {
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Cdo();

    /* renamed from: const, reason: not valid java name */
    public final String f9480const;

    /* renamed from: do, reason: not valid java name */
    public final SharePhoto f9481do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ShareVideo f9482do;

    /* renamed from: final, reason: not valid java name */
    public final String f9483final;

    /* renamed from: com.facebook.share.model.ShareVideoContent$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareVideoContent> {
        @Override // android.os.Parcelable.Creator
        public final ShareVideoContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new ShareVideoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareVideoContent[] newArray(int i) {
            return new ShareVideoContent[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideoContent(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9480const = parcel.readString();
        this.f9483final = parcel.readString();
        SharePhoto.Cdo m5531do = new SharePhoto.Cdo().m5531do((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        this.f9481do = (m5531do.f9468do == null && m5531do.f9467do == null) ? null : new SharePhoto(m5531do);
        ShareVideo.Cdo cdo = new ShareVideo.Cdo();
        ShareVideo shareVideo = (ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader());
        if (shareVideo != null) {
            cdo.f9479do = shareVideo.f9477do;
        }
        this.f9482do = new ShareVideo(cdo);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f9480const);
        parcel.writeString(this.f9483final);
        parcel.writeParcelable(this.f9481do, 0);
        parcel.writeParcelable(this.f9482do, 0);
    }
}
