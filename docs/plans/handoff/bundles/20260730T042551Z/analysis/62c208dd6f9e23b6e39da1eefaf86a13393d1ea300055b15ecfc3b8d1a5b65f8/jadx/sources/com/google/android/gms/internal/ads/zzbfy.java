package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zzbfy extends zzaya implements zzbga {
    public zzbfy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final InterfaceC0456Qm zzb(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        return V1.m2504new(zzcZ(2, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzc() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzd(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzdt(String str, InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzdu(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzdv(zzbft zzbftVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbftVar);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzdw(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zzdx(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbga
    public final void zze(InterfaceC0456Qm interfaceC0456Qm, int i) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeInt(i);
        zzda(5, zza);
    }
}
