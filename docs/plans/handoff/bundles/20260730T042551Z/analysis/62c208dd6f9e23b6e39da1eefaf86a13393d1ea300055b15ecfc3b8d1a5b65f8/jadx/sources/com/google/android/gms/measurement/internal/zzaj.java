package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3153jP;

@SafeParcelable.Class(creator = "ConsentParcelCreator")
/* loaded from: classes3.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new C3153jP();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 1)
    public final Bundle f10311do;

    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(id = 1) Bundle bundle) {
        this.f10311do = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.f10311do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
