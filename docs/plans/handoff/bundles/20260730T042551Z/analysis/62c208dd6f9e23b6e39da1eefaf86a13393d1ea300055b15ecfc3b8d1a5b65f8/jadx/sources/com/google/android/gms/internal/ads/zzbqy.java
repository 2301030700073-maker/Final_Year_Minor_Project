package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbqy extends zzaya implements zzbra {
    public zzbqy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbra
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzda(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbra
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbra
    public final void zzg() {
        zzda(2, zza());
    }
}
