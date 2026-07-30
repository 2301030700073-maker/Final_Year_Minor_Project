package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, Object> {
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Cdo();

    /* renamed from: const, reason: not valid java name */
    public final String f9449const;

    /* renamed from: com.facebook.share.model.ShareLinkContent$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareLinkContent> {
        @Override // android.os.Parcelable.Creator
        public final ShareLinkContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new ShareLinkContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareLinkContent[] newArray(int i) {
            return new ShareLinkContent[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareLinkContent(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9449const = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f9449const);
    }
}
