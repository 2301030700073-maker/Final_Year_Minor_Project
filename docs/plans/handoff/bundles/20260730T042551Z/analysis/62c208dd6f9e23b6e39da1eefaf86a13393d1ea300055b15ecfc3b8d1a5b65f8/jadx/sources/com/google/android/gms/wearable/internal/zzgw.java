package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "RemoveListenerRequestCreator")
/* loaded from: classes3.dex */
public final class zzgw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgw> CREATOR = new zzgx();

    @SafeParcelable.VersionField(id = 1)
    final int zza;

    @SafeParcelable.Field(getter = "getListenerAsBinder", id = 2, type = "android.os.IBinder")
    public final zzfa zzb;

    @SafeParcelable.Constructor
    public zzgw(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) IBinder iBinder) {
        this.zza = i;
        if (iBinder == null) {
            this.zzb = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            this.zzb = queryLocalInterface instanceof zzfa ? (zzfa) queryLocalInterface : new zzey(iBinder);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        zzfa zzfaVar = this.zzb;
        SafeParcelWriter.writeIBinder(parcel, 2, zzfaVar == null ? null : zzfaVar.asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzgw(zzfa zzfaVar) {
        this.zza = 1;
        this.zzb = zzfaVar;
    }
}
