package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbyn extends zzbam implements zzbyo {
    public zzbyn() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbyo zzt(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzbyo ? (zzbyo) queryLocalInterface : new zzbym(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbyv zzbyvVar = null;
        zzbyv zzbyvVar2 = null;
        zzbyw zzbywVar = null;
        zzbyr zzbyrVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbyvVar = queryLocalInterface instanceof zzbyv ? (zzbyv) queryLocalInterface : new zzbyt(readStrongBinder);
                }
                zzban.zzh(parcel);
                zzc(zzmVar, zzbyvVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzbyrVar = queryLocalInterface2 instanceof zzbyr ? (zzbyr) queryLocalInterface2 : new zzbyp(readStrongBinder2);
                }
                zzban.zzh(parcel);
                zze(zzbyrVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzi = zzi();
                parcel2.writeNoException();
                int i3 = zzban.zza;
                parcel2.writeInt(zzi ? 1 : 0);
                return true;
            case 4:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 5:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzb(asInterface);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzbywVar = queryLocalInterface3 instanceof zzbyw ? (zzbyw) queryLocalInterface3 : new zzbyw(readStrongBinder3);
                }
                zzban.zzh(parcel);
                zzs(zzbywVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbzc zzbzcVar = (zzbzc) zzban.zzb(parcel, zzbzc.CREATOR);
                zzban.zzh(parcel);
                zzh(zzbzcVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzf(zzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzg);
                return true;
            case 10:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zza = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzk(asInterface2, zza);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbyl zzl = zzl();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzl);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzea zzm = zzm();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzm);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdt zzb2 = com.google.android.gms.ads.internal.client.zzds.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzo(zzb2);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbyvVar2 = queryLocalInterface4 instanceof zzbyv ? (zzbyv) queryLocalInterface4 : new zzbyt(readStrongBinder4);
                }
                zzban.zzh(parcel);
                zzd(zzmVar2, zzbyvVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zza2 = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzp(zza2);
                parcel2.writeNoException();
                return true;
            case 16:
                String zzn = zzn();
                parcel2.writeNoException();
                parcel2.writeString(zzn);
                return true;
            case 17:
                long zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeLong(zzq);
                return true;
            case 18:
                long readLong = parcel.readLong();
                zzban.zzh(parcel);
                zzr(readLong);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
