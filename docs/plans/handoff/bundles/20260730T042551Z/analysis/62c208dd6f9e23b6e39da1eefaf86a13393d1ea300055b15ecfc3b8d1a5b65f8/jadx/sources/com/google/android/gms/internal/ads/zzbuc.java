package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.Map;

@SafeParcelable.Class(creator = "NativeAdLayoutInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzbuc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbuc> CREATOR = new zzbud();

    @SafeParcelable.Field(getter = "getAdViewAsBinder", id = 1, type = "android.os.IBinder")
    public final View zza;

    @SafeParcelable.Field(getter = "getAssetViewMapAsBinder", id = 2, type = "android.os.IBinder")
    public final Map zzb;

    @SafeParcelable.Constructor
    public zzbuc(@SafeParcelable.Param(id = 1) IBinder iBinder, @SafeParcelable.Param(id = 2) IBinder iBinder2) {
        this.zza = (View) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder));
        this.zzb = (Map) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        View view = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIBinder(parcel, 1, new BinderC3652rv(view).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 2, new BinderC3652rv(this.zzb).asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
