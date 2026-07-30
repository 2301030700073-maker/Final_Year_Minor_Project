package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3568qR;

@SafeParcelable.Class(creator = "AppSetInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new C3568qR();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getId", id = 1)
    public final String f10143break;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getScope", id = 2)
    public final int f10144for;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i) {
        this.f10143break = str;
        this.f10144for = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10143break, false);
        SafeParcelWriter.writeInt(parcel, 2, this.f10144for);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
