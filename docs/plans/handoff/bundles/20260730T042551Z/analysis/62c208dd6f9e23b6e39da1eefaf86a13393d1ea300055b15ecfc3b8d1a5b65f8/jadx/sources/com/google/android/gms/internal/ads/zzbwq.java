package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbwq extends zzaya implements zzbws {
    public zzbwq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zze() {
        zzda(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zzf() {
        zzda(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zzg() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zzh(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zzi(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zzj() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    public final void zzk(zzbwm zzbwmVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbwmVar);
        zzda(3, zza);
    }
}
