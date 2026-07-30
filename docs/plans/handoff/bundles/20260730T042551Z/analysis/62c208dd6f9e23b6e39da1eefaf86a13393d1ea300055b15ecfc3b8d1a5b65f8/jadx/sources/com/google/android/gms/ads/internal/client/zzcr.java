package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public final class zzcr extends zzaya implements zzct {
    public zzcr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzb() {
        zzda(5, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzc() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzd(zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zze() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzf() {
        zzda(2, zza());
    }
}
