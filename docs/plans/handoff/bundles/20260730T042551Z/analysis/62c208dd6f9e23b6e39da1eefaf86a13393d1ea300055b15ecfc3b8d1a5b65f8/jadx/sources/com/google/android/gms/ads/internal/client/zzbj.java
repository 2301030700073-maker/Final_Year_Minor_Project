package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public final class zzbj extends zzaya implements zzbl {
    public zzbj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzc() {
        zzda(6, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzd() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zze(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzf(zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzg() {
        zzda(7, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzh() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzi() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzj() {
        zzda(5, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzk() {
        zzda(9, zza());
    }
}
