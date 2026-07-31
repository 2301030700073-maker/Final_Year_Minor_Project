package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbxz extends zzbal implements zzbyb {
    zzbxz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zze() throws RemoteException {
        zzdf(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzf() throws RemoteException {
        zzdf(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzg() throws RemoteException {
        zzdf(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzh() throws RemoteException {
        zzdf(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzi(zzbxv zzbxvVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbxvVar);
        zzdf(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzj() throws RemoteException {
        zzdf(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzk(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzdf(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyb
    public final void zzl() throws RemoteException {
        zzdf(8, zza());
    }
}
