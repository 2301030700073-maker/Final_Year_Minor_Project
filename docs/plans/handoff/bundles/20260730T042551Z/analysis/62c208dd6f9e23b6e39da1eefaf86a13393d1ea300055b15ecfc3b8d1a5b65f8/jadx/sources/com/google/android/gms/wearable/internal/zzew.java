package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes3.dex */
public abstract class zzew extends com.google.android.gms.internal.wearable.zzb implements zzex {
    public zzew() {
        super("com.google.android.gms.wearable.internal.IWearableCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                zzed zzedVar = (zzed) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzed.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzr(zzedVar);
                break;
            case 3:
                zzgu zzguVar = (zzgu) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzgu.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzC(zzguVar);
                break;
            case 4:
                zzej zzejVar = (zzej) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzej.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzu(zzejVar);
                break;
            case 5:
                DataHolder dataHolder = (DataHolder) com.google.android.gms.internal.wearable.zzc.zza(parcel, DataHolder.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzh(dataHolder);
                break;
            case 6:
                zzdl zzdlVar = (zzdl) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdl.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzi(zzdlVar);
                break;
            case 7:
                zzhc zzhcVar = (zzhc) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzhc.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzE(zzhcVar);
                break;
            case 8:
                zzen zzenVar = (zzen) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzen.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzw(zzenVar);
                break;
            case 9:
                zzep zzepVar = (zzep) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzep.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzx(zzepVar);
                break;
            case 10:
                zzeh zzehVar = (zzeh) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzeh.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzt(zzehVar);
                break;
            case 11:
                Status status = (Status) com.google.android.gms.internal.wearable.zzc.zza(parcel, Status.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzG(status);
                break;
            case 12:
                zzhg zzhgVar = (zzhg) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzhg.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzz(zzhgVar);
                break;
            case 13:
                zzef zzefVar = (zzef) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzef.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzs(zzefVar);
                break;
            case 14:
                zzgo zzgoVar = (zzgo) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzgo.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzA(zzgoVar);
                break;
            case 15:
                zzcc zzccVar = (zzcc) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzcc.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzf(zzccVar);
                break;
            case 16:
                zzcc zzccVar2 = (zzcc) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzcc.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzg(zzccVar2);
                break;
            case 17:
                zzdr zzdrVar = (zzdr) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdr.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzl(zzdrVar);
                break;
            case 18:
                zzdt zzdtVar = (zzdt) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdt.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzm(zzdtVar);
                break;
            case 19:
                zzbw zzbwVar = (zzbw) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzbw.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzd(zzbwVar);
                break;
            case 20:
                zzby zzbyVar = (zzby) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzby.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zze(zzbyVar);
                break;
            case 21:
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
            case Constants.MAX_TREE_DEPTH /* 25 */:
            case 31:
            case 32:
            case 33:
            default:
                return false;
            case 22:
                zzdp zzdpVar = (zzdp) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdp.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzk(zzdpVar);
                break;
            case ConnectionResult.API_DISABLED /* 23 */:
                zzdn zzdnVar = (zzdn) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdn.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzj(zzdnVar);
                break;
            case 26:
                zzf zzfVar = (zzf) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzf.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzb(zzfVar);
                break;
            case 27:
                zzgy zzgyVar = (zzgy) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzgy.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzD(zzgyVar);
                break;
            case 28:
                zzdw zzdwVar = (zzdw) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdw.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzn(zzdwVar);
                break;
            case 29:
                zzea zzeaVar = (zzea) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzea.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzp(zzeaVar);
                break;
            case 30:
                zzdy zzdyVar = (zzdy) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzdy.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzo(zzdyVar);
                break;
            case 34:
                zzha zzhaVar = (zzha) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzha.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzF(zzhaVar);
                break;
            case 35:
                zzel zzelVar = (zzel) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzel.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzv(zzelVar);
                break;
            case 36:
                zzgs zzgsVar = (zzgs) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzgs.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzB(zzgsVar);
                break;
            case 37:
                zzeb zzebVar = (zzeb) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzeb.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzq(zzebVar);
                break;
            case 38:
                zzcf zzcfVar = (zzcf) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzcf.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzH(zzcfVar);
                break;
            case 39:
                zzer zzerVar = (zzer) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzer.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzy(zzerVar);
                break;
            case 40:
                zzq zzqVar = (zzq) com.google.android.gms.internal.wearable.zzc.zza(parcel, zzq.CREATOR);
                com.google.android.gms.internal.wearable.zzc.zzb(parcel);
                zzc(zzqVar);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
