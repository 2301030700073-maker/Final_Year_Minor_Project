package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.TU;

@SafeParcelable.Class(creator = "TriggerUriParcelCreator")
/* loaded from: classes3.dex */
public final class zzno extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzno> CREATOR = new TU();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(id = 1)
    public final String f10317break;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public final long f10318do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(id = 3)
    public final int f10319for;

    @SafeParcelable.Constructor
    public zzno(@SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 1) String str) {
        this.f10317break = str;
        this.f10318do = j;
        this.f10319for = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10317break, false);
        SafeParcelWriter.writeLong(parcel, 2, this.f10318do);
        SafeParcelWriter.writeInt(parcel, 3, this.f10319for);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
