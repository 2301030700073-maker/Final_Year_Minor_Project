package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbwo extends zzayb implements zzbwp {
    public zzbwo() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbwp zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzbwp ? (zzbwp) queryLocalInterface : new zzbwn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbww zzbwwVar = null;
        zzbww zzbwwVar2 = null;
        zzbwx zzbwxVar = null;
        zzbws zzbwsVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbwwVar = queryLocalInterface instanceof zzbww ? (zzbww) queryLocalInterface : new zzbwu(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzf(zzmVar, zzbwwVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzbwsVar = queryLocalInterface2 instanceof zzbws ? (zzbws) queryLocalInterface2 : new zzbwq(readStrongBinder2);
                }
                zzayc.zzc(parcel);
                zzk(zzbwsVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzo = zzo();
                parcel2.writeNoException();
                int i3 = zzayc.zza;
                parcel2.writeInt(zzo ? 1 : 0);
                return true;
            case 4:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 5:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzm(n);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzbwxVar = queryLocalInterface3 instanceof zzbwx ? (zzbwx) queryLocalInterface3 : new zzbwx(readStrongBinder3);
                }
                zzayc.zzc(parcel);
                zzp(zzbwxVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbxd zzbxdVar = (zzbxd) zzayc.zza(parcel, zzbxd.CREATOR);
                zzayc.zzc(parcel);
                zzl(zzbxdVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdo zzb = com.google.android.gms.ads.internal.client.zzdn.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzi(zzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzb2 = zzb();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzb2);
                return true;
            case 10:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                boolean zzg = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzn(n2, zzg);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbwm zzd = zzd();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzd);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzdy zzc = zzc();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzc);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdr zzb3 = com.google.android.gms.ads.internal.client.zzdq.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzj(zzb3);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbwwVar2 = queryLocalInterface4 instanceof zzbww ? (zzbww) queryLocalInterface4 : new zzbwu(readStrongBinder4);
                }
                zzayc.zzc(parcel);
                zzg(zzmVar2, zzbwwVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zzg2 = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzh(zzg2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
