package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public final class zzbm extends zzaya implements zzbo {
    public zzbm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbo
    public final void zzb(zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbo
    public final void zzc() {
        zzda(1, zza());
    }
}
