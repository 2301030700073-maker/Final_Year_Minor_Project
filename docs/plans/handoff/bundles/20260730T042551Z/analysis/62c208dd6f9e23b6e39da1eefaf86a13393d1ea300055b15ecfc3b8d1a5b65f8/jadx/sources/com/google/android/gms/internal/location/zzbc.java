package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.AbstractBinderC3272lQ;
import defpackage.InterfaceC2692eQ;
import defpackage.InterfaceC3390nQ;
import defpackage.RP;

@SafeParcelable.Class(creator = "LocationRequestUpdateDataCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new zzbd();

    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequestUpdateData.OPERATION_ADD", id = 1)
    final int zza;

    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 2)
    final zzba zzb;

    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getLocationListenerBinder", id = 3, type = "android.os.IBinder")
    final InterfaceC3390nQ zzc;

    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 4)
    final PendingIntent zzd;

    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getLocationCallbackBinder", id = 5, type = "android.os.IBinder")
    final InterfaceC2692eQ zze;

    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getFusedLocationProviderCallbackBinder", id = 6, type = "android.os.IBinder")
    final zzai zzf;

    @SafeParcelable.Constructor
    public zzbc(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zzba zzbaVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) PendingIntent pendingIntent, @SafeParcelable.Param(id = 5) IBinder iBinder2, @SafeParcelable.Param(id = 6) IBinder iBinder3) {
        this.zza = i;
        this.zzb = zzbaVar;
        zzai zzaiVar = null;
        this.zzc = iBinder == null ? null : AbstractBinderC3272lQ.zzb(iBinder);
        this.zzd = pendingIntent;
        this.zze = iBinder2 == null ? null : RP.zzb(iBinder2);
        if (iBinder3 != null) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzaiVar = queryLocalInterface instanceof zzai ? (zzai) queryLocalInterface : new zzag(iBinder3);
        }
        this.zzf = zzaiVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder, nQ] */
    public static zzbc zza(InterfaceC3390nQ interfaceC3390nQ, zzai zzaiVar) {
        if (zzaiVar == null) {
            zzaiVar = null;
        }
        return new zzbc(2, null, interfaceC3390nQ, null, null, zzaiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzbc zzb(zzba zzbaVar, PendingIntent pendingIntent, zzai zzaiVar) {
        return new zzbc(1, zzbaVar, null, pendingIntent, null, zzaiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder, eQ] */
    public static zzbc zzc(InterfaceC2692eQ interfaceC2692eQ, zzai zzaiVar) {
        if (zzaiVar == null) {
            zzaiVar = null;
        }
        return new zzbc(2, null, null, null, interfaceC2692eQ, zzaiVar);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        InterfaceC3390nQ interfaceC3390nQ = this.zzc;
        SafeParcelWriter.writeIBinder(parcel, 3, interfaceC3390nQ == null ? null : interfaceC3390nQ.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        InterfaceC2692eQ interfaceC2692eQ = this.zze;
        SafeParcelWriter.writeIBinder(parcel, 5, interfaceC2692eQ == null ? null : interfaceC2692eQ.asBinder(), false);
        zzai zzaiVar = this.zzf;
        SafeParcelWriter.writeIBinder(parcel, 6, zzaiVar != null ? zzaiVar.asBinder() : null, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
