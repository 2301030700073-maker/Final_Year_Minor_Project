package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.VP;

@SafeParcelable.Class(creator = "AppSetIdRequestParamsCreator")
/* loaded from: classes.dex */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new VP();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getVersion", id = 1)
    public final String f10141break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(getter = "getClientAppPackageName", id = 2)
    public final String f10142catch;

    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.f10141break = str;
        this.f10142catch = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10141break, false);
        SafeParcelWriter.writeString(parcel, 2, this.f10142catch, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
