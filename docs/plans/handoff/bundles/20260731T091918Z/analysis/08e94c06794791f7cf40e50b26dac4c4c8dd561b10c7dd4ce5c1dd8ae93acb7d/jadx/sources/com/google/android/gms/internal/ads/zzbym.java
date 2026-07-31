package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbym extends zzbal implements zzbyo {
    zzbym(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzc(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbyv zzbyvVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, zzbyvVar);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzd(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbyv zzbyvVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, zzbyvVar);
        zzdf(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zze(zzbyr zzbyrVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbyrVar);
        zzdf(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzf(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzdqVar);
        zzdf(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final Bundle zzg() throws RemoteException {
        Parcel zzde = zzde(9, zza());
        Bundle bundle = (Bundle) zzban.zzb(zzde, Bundle.CREATOR);
        zzde.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzh(zzbzc zzbzcVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbzcVar);
        zzdf(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final boolean zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final String zzj() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzk(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final zzbyl zzl() throws RemoteException {
        zzbyl zzbyjVar;
        Parcel zzde = zzde(11, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbyjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzbyjVar = queryLocalInterface instanceof zzbyl ? (zzbyl) queryLocalInterface : new zzbyj(readStrongBinder);
        }
        zzde.recycle();
        return zzbyjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final com.google.android.gms.ads.internal.client.zzea zzm() throws RemoteException {
        Parcel zzde = zzde(12, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final String zzn() throws RemoteException {
        Parcel zzde = zzde(16, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzo(com.google.android.gms.ads.internal.client.zzdt zzdtVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzdtVar);
        zzdf(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzp(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzban.zza;
        zza.writeInt(z ? 1 : 0);
        zzdf(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final long zzq() throws RemoteException {
        Parcel zzde = zzde(17, zza());
        long readLong = zzde.readLong();
        zzde.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzr(long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zzdf(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzs(zzbyw zzbywVar) throws RemoteException {
        throw null;
    }
}
