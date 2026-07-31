package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbwv extends zzbal implements zzbwx {
    zzbwv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zze(zzbxj zzbxjVar, zzbxb zzbxbVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbxjVar);
        zzban.zze(zza, zzbxbVar);
        zzdf(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzf(zzbxj zzbxjVar, zzbxb zzbxbVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbxjVar);
        zzban.zze(zza, zzbxbVar);
        zzdf(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzg(zzbxj zzbxjVar, zzbxb zzbxbVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbxjVar);
        zzban.zze(zza, zzbxbVar);
        zzdf(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzh(String str, zzbxb zzbxbVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzban.zze(zza, zzbxbVar);
        zzdf(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzi(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdf(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzj(zzbwt zzbwtVar, zzbxc zzbxcVar) throws RemoteException {
        throw null;
    }
}
