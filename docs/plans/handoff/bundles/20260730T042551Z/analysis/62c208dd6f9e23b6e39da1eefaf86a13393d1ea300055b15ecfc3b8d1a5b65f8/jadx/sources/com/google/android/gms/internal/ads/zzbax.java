package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbax extends zzaya {
    public zzbax(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long zze(zzbav zzbavVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbavVar);
        Parcel zzcZ = zzcZ(3, zza);
        long readLong = zzcZ.readLong();
        zzcZ.recycle();
        return readLong;
    }

    public final zzbas zzf(zzbav zzbavVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbavVar);
        Parcel zzcZ = zzcZ(1, zza);
        zzbas zzbasVar = (zzbas) zzayc.zza(zzcZ, zzbas.CREATOR);
        zzcZ.recycle();
        return zzbasVar;
    }

    public final zzbas zzg(zzbav zzbavVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbavVar);
        Parcel zzcZ = zzcZ(2, zza);
        zzbas zzbasVar = (zzbas) zzayc.zza(zzcZ, zzbas.CREATOR);
        zzcZ.recycle();
        return zzbasVar;
    }
}
