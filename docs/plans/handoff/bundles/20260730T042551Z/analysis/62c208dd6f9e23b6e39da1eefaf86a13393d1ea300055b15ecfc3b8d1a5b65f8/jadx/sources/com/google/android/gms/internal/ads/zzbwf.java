package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbwf extends zzaya implements zzbwh {
    public zzbwf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zze(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzf(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzg(InterfaceC0456Qm interfaceC0456Qm, int i) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeInt(i);
        zzda(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzh(InterfaceC0456Qm interfaceC0456Qm) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzi(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzj(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzk(InterfaceC0456Qm interfaceC0456Qm, int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzl(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzm(InterfaceC0456Qm interfaceC0456Qm, zzbwi zzbwiVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzbwiVar);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzn(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzo(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(5, zza);
    }
}
