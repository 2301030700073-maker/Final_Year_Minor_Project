package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ShareHashtag implements ShareModel {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new Cif();

    /* renamed from: break, reason: not valid java name */
    public final String f9447break;

    /* renamed from: com.facebook.share.model.ShareHashtag$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public String f9448do;
    }

    /* renamed from: com.facebook.share.model.ShareHashtag$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<ShareHashtag> {
        @Override // android.os.Parcelable.Creator
        public final ShareHashtag createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new ShareHashtag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    }

    public ShareHashtag(Cdo cdo) {
        this.f9447break = cdo.f9448do;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeString(this.f9447break);
    }

    public ShareHashtag(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9447break = parcel.readString();
    }
}
