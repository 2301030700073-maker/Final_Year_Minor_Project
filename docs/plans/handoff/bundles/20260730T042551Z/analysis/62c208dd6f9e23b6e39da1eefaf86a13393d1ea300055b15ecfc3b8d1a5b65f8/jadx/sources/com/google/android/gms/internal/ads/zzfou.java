package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzfou extends zzaya {
    public zzfou(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfos zze(zzfoq zzfoqVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzfoqVar);
        Parcel zzcZ = zzcZ(1, zza);
        zzfos zzfosVar = (zzfos) zzayc.zza(zzcZ, zzfos.CREATOR);
        zzcZ.recycle();
        return zzfosVar;
    }

    public final zzfpb zzf(zzfoz zzfozVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzfozVar);
        Parcel zzcZ = zzcZ(3, zza);
        zzfpb zzfpbVar = (zzfpb) zzayc.zza(zzcZ, zzfpb.CREATOR);
        zzcZ.recycle();
        return zzfpbVar;
    }

    public final void zzg(zzfon zzfonVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzfonVar);
        zzda(2, zza);
    }
}
