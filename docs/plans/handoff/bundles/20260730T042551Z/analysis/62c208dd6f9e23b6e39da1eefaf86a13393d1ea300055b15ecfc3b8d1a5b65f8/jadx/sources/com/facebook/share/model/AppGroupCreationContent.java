package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class AppGroupCreationContent implements ShareModel {
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new Cif();

    /* renamed from: break, reason: not valid java name */
    public final String f9413break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9414catch;

    /* renamed from: do, reason: not valid java name */
    public final Cdo f9415do;

    /* renamed from: com.facebook.share.model.AppGroupCreationContent$do, reason: invalid class name */
    public enum Cdo {
        /* JADX INFO: Fake field, exist only in values array */
        Open,
        /* JADX INFO: Fake field, exist only in values array */
        Closed;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cdo[] valuesCustom() {
            return (Cdo[]) Arrays.copyOf(values(), 2);
        }
    }

    /* renamed from: com.facebook.share.model.AppGroupCreationContent$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<AppGroupCreationContent> {
        @Override // android.os.Parcelable.Creator
        public final AppGroupCreationContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new AppGroupCreationContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final AppGroupCreationContent[] newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    }

    public AppGroupCreationContent(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9413break = parcel.readString();
        this.f9414catch = parcel.readString();
        this.f9415do = (Cdo) parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        parcel.writeString(this.f9413break);
        parcel.writeString(this.f9414catch);
        parcel.writeSerializable(this.f9415do);
    }
}
