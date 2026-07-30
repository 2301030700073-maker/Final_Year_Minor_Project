package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.ads.internal.offline.buffering.zza;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbp extends zzaya implements zzbr {
    public zzbp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final void zze(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final boolean zzf(InterfaceC0456Qm interfaceC0456Qm, String str, String str2) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeString(str);
        zza.writeString(str2);
        Parcel zzcZ = zzcZ(1, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final boolean zzg(InterfaceC0456Qm interfaceC0456Qm, zza zzaVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzaVar);
        Parcel zzcZ = zzcZ(3, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
