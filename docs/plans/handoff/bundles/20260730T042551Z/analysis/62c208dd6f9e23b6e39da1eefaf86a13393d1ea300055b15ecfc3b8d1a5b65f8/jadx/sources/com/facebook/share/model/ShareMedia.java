package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMedia.Cdo;
import defpackage.C0173Do;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class ShareMedia<M extends ShareMedia<M, B>, B extends Cdo<M, B>> implements ShareModel {

    /* renamed from: do, reason: not valid java name */
    public final Bundle f9450do;

    /* renamed from: com.facebook.share.model.ShareMedia$do, reason: invalid class name */
    public static abstract class Cdo<M extends ShareMedia<M, B>, B extends Cdo<M, B>> {

        /* renamed from: do, reason: not valid java name */
        public final Bundle f9451do = new Bundle();
    }

    /* renamed from: com.facebook.share.model.ShareMedia$if, reason: invalid class name */
    public enum Cif {
        PHOTO,
        VIDEO;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cif[] valuesCustom() {
            return (Cif[]) Arrays.copyOf(values(), 2);
        }
    }

    public ShareMedia(Cdo<M, B> cdo) {
        C0173Do.m401try(cdo, "builder");
        this.f9450do = new Bundle(cdo.f9451do);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Cif mo5530do();

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeBundle(this.f9450do);
    }

    public ShareMedia(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        Bundle readBundle = parcel.readBundle(getClass().getClassLoader());
        this.f9450do = readBundle == null ? new Bundle() : readBundle;
    }
}
