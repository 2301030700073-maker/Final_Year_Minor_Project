package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class zzez extends com.google.android.gms.internal.wearable.zzb implements zzfa {
    public zzez() {
        super("com.google.android.gms.wearable.internal.IWearableListener");
    }

    @Override // com.google.android.gms.internal.wearable.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzev zzevVar;
        if (i == 13) {
            zzfx zzfxVar = (zzfx) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzfx.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzevVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IRpcResponseCallback");
                zzevVar = queryLocalInterface instanceof zzev ? (zzev) queryLocalInterface : new zzev(readStrongBinder);
            }
            com.google.android.gms.internal.wearable.zzc.zzb(parcel);
            zzl(zzfxVar, zzevVar);
            return true;
        }
        if (i == 14) {
            com.google.android.gms.internal.wearable.zzc.zzb(parcel);
            return true;
        }
        switch (i) {
            case 1:
                DataHolder dataHolder = (DataHolder) com.google.android.gms.internal.wearable.zzc.zza(parcel, DataHolder.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zze(dataHolder);
                return true;
            case 2:
                zzfx zzfxVar2 = (zzfx) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzfx.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzg(zzfxVar2);
                return true;
            case 3:
                zzgm zzgmVar = (zzgm) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzgm.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzi(zzgmVar);
                return true;
            case 4:
                zzgm zzgmVar2 = (zzgm) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzgm.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzj(zzgmVar2);
                return true;
            case 5:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzgm.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzd(createTypedArrayList);
                return true;
            case 6:
                zzl zzlVar = (zzl) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzl.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzh(zzlVar);
                return true;
            case 7:
                zzbf zzbfVar = (zzbf) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzbf.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzb(zzbfVar);
                return true;
            case 8:
                zzao zzaoVar = (zzao) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzao.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzc(zzaoVar);
                return true;
            case 9:
                zzi zziVar = (zzi) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzi.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzf(zziVar);
                return true;
            default:
                return false;
        }
    }
}
