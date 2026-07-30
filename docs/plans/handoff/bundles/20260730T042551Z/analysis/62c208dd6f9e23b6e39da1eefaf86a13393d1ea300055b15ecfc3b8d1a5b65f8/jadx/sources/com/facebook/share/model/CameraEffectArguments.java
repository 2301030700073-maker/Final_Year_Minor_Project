package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class CameraEffectArguments implements ShareModel {
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new Cif();

    /* renamed from: do, reason: not valid java name */
    public final Bundle f9417do;

    /* renamed from: com.facebook.share.model.CameraEffectArguments$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Bundle f9418do = new Bundle();
    }

    /* renamed from: com.facebook.share.model.CameraEffectArguments$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<CameraEffectArguments> {
        @Override // android.os.Parcelable.Creator
        public final CameraEffectArguments createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new CameraEffectArguments(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    }

    public CameraEffectArguments(Cdo cdo) {
        this.f9417do = cdo.f9418do;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        parcel.writeBundle(this.f9417do);
    }

    public CameraEffectArguments(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9417do = parcel.readBundle(CameraEffectArguments.class.getClassLoader());
    }
}
