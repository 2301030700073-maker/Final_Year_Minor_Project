package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zat;
import defpackage.AO;

@SafeParcelable.Class(creator = "SignInRequestCreator")
/* loaded from: classes3.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new AO();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getResolveAccountRequest", id = 2)
    public final zat f10365do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10366for;

    @SafeParcelable.Constructor
    public zai(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zat zatVar) {
        this.f10366for = i;
        this.f10365do = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10366for);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10365do, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
