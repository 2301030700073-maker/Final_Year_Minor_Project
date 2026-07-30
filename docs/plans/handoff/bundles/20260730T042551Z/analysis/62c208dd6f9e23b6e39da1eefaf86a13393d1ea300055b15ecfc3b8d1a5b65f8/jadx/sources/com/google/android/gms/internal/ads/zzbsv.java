package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbsv extends zzaya implements zzbsx {
    public zzbsv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zze(Intent intent) {
        Parcel zza = zza();
        zzayc.zzd(zza, intent);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzf(String[] strArr, int[] iArr, InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zza.writeStringArray(strArr);
        zza.writeIntArray(iArr);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzg(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzh() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzi(InterfaceC0456Qm interfaceC0456Qm, String str, String str2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzj(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzaVar);
        zzda(6, zza);
    }
}
