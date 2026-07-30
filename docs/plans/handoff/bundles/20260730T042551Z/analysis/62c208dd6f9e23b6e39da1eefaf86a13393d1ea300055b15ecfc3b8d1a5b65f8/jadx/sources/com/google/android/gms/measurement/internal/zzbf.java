package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3861vQ;

@SafeParcelable.Class(creator = "EventParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new C3861vQ();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public final String f10313break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(id = 4)
    public final String f10314catch;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 5)
    public final long f10315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 3)
    public final zzbe f10316do;

    public zzbf(zzbf zzbfVar, long j) {
        Preconditions.checkNotNull(zzbfVar);
        this.f10313break = zzbfVar.f10313break;
        this.f10316do = zzbfVar.f10316do;
        this.f10314catch = zzbfVar.f10314catch;
        this.f10315do = j;
    }

    public final String toString() {
        return "origin=" + this.f10314catch + ",name=" + this.f10313break + ",params=" + String.valueOf(this.f10316do);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f10313break, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10316do, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.f10314catch, false);
        SafeParcelWriter.writeLong(parcel, 5, this.f10315do);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) zzbe zzbeVar, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) long j) {
        this.f10313break = str;
        this.f10316do = zzbeVar;
        this.f10314catch = str2;
        this.f10315do = j;
    }
}
