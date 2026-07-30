package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbys extends zzaya implements zzbyu {
    public zzbys(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final InterfaceC0456Qm zze(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, String str, InterfaceC0456Qm interfaceC0456Qm3) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, interfaceC0456Qm2);
        zza.writeString(str);
        zzayc.zzf(zza, interfaceC0456Qm3);
        return V1.m2504new(zzcZ(11, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzf(InterfaceC0456Qm interfaceC0456Qm, zzbyy zzbyyVar, zzbyr zzbyrVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzbyyVar);
        zzayc.zzf(zza, zzbyrVar);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzg(zzbuc zzbucVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbucVar);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzh(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbttVar);
        zzda(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzi(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbttVar);
        zzda(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzj(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzk(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzl(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbttVar);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzm(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbttVar);
        zzda(5, zza);
    }
}
