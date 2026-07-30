package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class CameraEffectTextures implements ShareModel {
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new Cif();

    /* renamed from: do, reason: not valid java name */
    public final Bundle f9419do;

    /* renamed from: com.facebook.share.model.CameraEffectTextures$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Bundle f9420do = new Bundle();
    }

    /* renamed from: com.facebook.share.model.CameraEffectTextures$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<CameraEffectTextures> {
        @Override // android.os.Parcelable.Creator
        public final CameraEffectTextures createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new CameraEffectTextures(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    }

    public CameraEffectTextures(Cdo cdo) {
        this.f9419do = cdo.f9420do;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        parcel.writeBundle(this.f9419do);
    }

    public CameraEffectTextures(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9419do = parcel.readBundle(CameraEffectTextures.class.getClassLoader());
    }
}
