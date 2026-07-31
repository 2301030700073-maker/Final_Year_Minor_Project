package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbyt extends zzbal implements zzbyv {
    zzbyt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zze() throws RemoteException {
        zzdf(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzf(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzdf(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzg(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzeVar);
        zzdf(3, zza);
    }
}
