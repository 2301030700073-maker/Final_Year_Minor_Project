package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbdh extends zzbal implements IInterface {
    zzbdh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final zzbdc zze(zzbdf zzbdfVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbdfVar);
        Parcel zzde = zzde(1, zza);
        zzbdc zzbdcVar = (zzbdc) zzban.zzb(zzde, zzbdc.CREATOR);
        zzde.recycle();
        return zzbdcVar;
    }

    public final zzbdc zzf(zzbdf zzbdfVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbdfVar);
        Parcel zzde = zzde(2, zza);
        zzbdc zzbdcVar = (zzbdc) zzban.zzb(zzde, zzbdc.CREATOR);
        zzde.recycle();
        return zzbdcVar;
    }

    public final long zzg(zzbdf zzbdfVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbdfVar);
        Parcel zzde = zzde(3, zza);
        long readLong = zzde.readLong();
        zzde.recycle();
        return readLong;
    }
}
