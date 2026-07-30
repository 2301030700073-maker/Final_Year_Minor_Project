package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbqs extends zzaya implements zzbqu {
    public zzbqs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbqu
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzda(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqu
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqu
    public final void zzg() {
        zzda(2, zza());
    }
}
