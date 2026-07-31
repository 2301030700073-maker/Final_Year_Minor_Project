package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbco extends zzbal implements zzbcq {
    zzbco(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbcq
    public final void zzb(zzbcn zzbcnVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbcnVar);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbcq
    public final void zzc(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzdf(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbcq
    public final void zzd(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzeVar);
        zzdf(3, zza);
    }
}
