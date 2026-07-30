package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public final class zzbp extends zzaya implements zzbr {
    public zzbp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final String zze() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final String zzf() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final void zzg(zzm zzmVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzmVar);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final void zzh(zzm zzmVar, int i) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzmVar);
        zza.writeInt(i);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final boolean zzi() {
        Parcel zzcZ = zzcZ(3, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
