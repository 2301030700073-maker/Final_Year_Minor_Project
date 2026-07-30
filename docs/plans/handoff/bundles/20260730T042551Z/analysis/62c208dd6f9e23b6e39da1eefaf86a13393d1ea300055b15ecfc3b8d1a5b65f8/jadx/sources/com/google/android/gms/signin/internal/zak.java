package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zav;
import defpackage.BO;

@SafeParcelable.Class(creator = "SignInResponseCreator")
/* loaded from: classes3.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new BO();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getConnectionResult", id = 2)
    public final ConnectionResult f10367do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getResolveAccountResponse", id = 3)
    public final zav f10368do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10369for;

    @SafeParcelable.Constructor
    public zak(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ConnectionResult connectionResult, @SafeParcelable.Param(id = 3) zav zavVar) {
        this.f10369for = i;
        this.f10367do = connectionResult;
        this.f10368do = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10369for);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10367do, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10368do, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
