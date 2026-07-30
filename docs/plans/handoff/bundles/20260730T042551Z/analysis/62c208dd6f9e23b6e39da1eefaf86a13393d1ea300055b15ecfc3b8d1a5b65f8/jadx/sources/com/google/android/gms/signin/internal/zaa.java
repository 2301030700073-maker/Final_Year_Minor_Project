package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3506pO;

@SafeParcelable.Class(creator = "AuthAccountResultCreator")
/* loaded from: classes3.dex */
public final class zaa extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zaa> CREATOR = new C3506pO();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getRawAuthResolutionIntent", id = 3)
    public final Intent f10360do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10361for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getConnectionResultCode", id = 2)
    public final int f10362new;

    public zaa() {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10362new == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10361for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10362new);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10360do, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zaa(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) Intent intent) {
        this.f10361for = i;
        this.f10362new = i2;
        this.f10360do = intent;
    }
}
