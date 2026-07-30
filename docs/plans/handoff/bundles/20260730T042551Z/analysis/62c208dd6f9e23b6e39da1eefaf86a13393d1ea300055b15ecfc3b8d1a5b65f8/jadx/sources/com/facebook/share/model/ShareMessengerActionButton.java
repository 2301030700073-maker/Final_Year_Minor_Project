package com.facebook.share.model;

import android.os.Parcel;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public abstract class ShareMessengerActionButton implements ShareModel {

    /* renamed from: break, reason: not valid java name */
    public final String f9456break;

    public ShareMessengerActionButton(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9456break = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeString(this.f9456break);
    }
}
