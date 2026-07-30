package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ShareVideo extends ShareMedia<ShareVideo, Cdo> {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Cif();

    /* renamed from: do, reason: not valid java name */
    public final Uri f9477do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ShareMedia.Cif f9478do;

    /* renamed from: com.facebook.share.model.ShareVideo$do, reason: invalid class name */
    public static final class Cdo extends ShareMedia.Cdo<ShareVideo, Cdo> {

        /* renamed from: do, reason: not valid java name */
        public Uri f9479do;
    }

    /* renamed from: com.facebook.share.model.ShareVideo$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<ShareVideo> {
        @Override // android.os.Parcelable.Creator
        public final ShareVideo createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new ShareVideo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    }

    public ShareVideo(Cdo cdo) {
        super(cdo);
        this.f9478do = ShareMedia.Cif.VIDEO;
        this.f9477do = cdo.f9479do;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia
    /* renamed from: do */
    public final ShareMedia.Cif mo5530do() {
        return this.f9478do;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f9477do, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideo(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9478do = ShareMedia.Cif.VIDEO;
        this.f9477do = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
