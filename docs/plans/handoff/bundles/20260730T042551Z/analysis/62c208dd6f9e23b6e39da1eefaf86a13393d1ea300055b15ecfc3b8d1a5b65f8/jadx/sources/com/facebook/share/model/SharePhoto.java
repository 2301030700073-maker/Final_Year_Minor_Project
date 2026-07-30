package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class SharePhoto extends ShareMedia<SharePhoto, Cdo> {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Cif();

    /* renamed from: break, reason: not valid java name */
    public final String f9462break;

    /* renamed from: do, reason: not valid java name */
    public final Bitmap f9463do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Uri f9464do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ShareMedia.Cif f9465do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9466do;

    /* renamed from: com.facebook.share.model.SharePhoto$do, reason: invalid class name */
    public static final class Cdo extends ShareMedia.Cdo<SharePhoto, Cdo> {

        /* renamed from: do, reason: not valid java name */
        public Bitmap f9467do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Uri f9468do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f9469do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f9470do;

        /* renamed from: do, reason: not valid java name */
        public final Cdo m5531do(SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                Bundle bundle = ((ShareMedia) sharePhoto).f9450do;
                C0173Do.m401try(bundle, "parameters");
                ((ShareMedia.Cdo) this).f9451do.putAll(bundle);
                this.f9467do = sharePhoto.f9463do;
                this.f9468do = sharePhoto.f9464do;
                this.f9470do = sharePhoto.f9466do;
                this.f9469do = sharePhoto.f9462break;
            }
            return this;
        }
    }

    /* renamed from: com.facebook.share.model.SharePhoto$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<SharePhoto> {
        @Override // android.os.Parcelable.Creator
        public final SharePhoto createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new SharePhoto(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    }

    public SharePhoto(Cdo cdo) {
        super(cdo);
        this.f9465do = ShareMedia.Cif.PHOTO;
        this.f9463do = cdo.f9467do;
        this.f9464do = cdo.f9468do;
        this.f9466do = cdo.f9470do;
        this.f9462break = cdo.f9469do;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia
    /* renamed from: do */
    public final ShareMedia.Cif mo5530do() {
        return this.f9465do;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f9463do, 0);
        parcel.writeParcelable(this.f9464do, 0);
        parcel.writeByte(this.f9466do ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f9462break);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharePhoto(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9465do = ShareMedia.Cif.PHOTO;
        this.f9463do = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f9464do = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f9466do = parcel.readByte() != 0;
        this.f9462break = parcel.readString();
    }
}
