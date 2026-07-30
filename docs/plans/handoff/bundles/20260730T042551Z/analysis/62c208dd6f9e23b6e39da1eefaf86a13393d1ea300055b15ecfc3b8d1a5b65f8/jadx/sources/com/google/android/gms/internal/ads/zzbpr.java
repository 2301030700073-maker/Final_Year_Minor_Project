package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbpr extends zzaya implements zzbpt {
    public zzbpr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final boolean zzA() {
        Parcel zzcZ = zzcZ(18, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final boolean zzB() {
        Parcel zzcZ = zzcZ(17, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final double zze() {
        Parcel zzcZ = zzcZ(8, zza());
        double readDouble = zzcZ.readDouble();
        zzcZ.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final float zzf() {
        Parcel zzcZ = zzcZ(23, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final float zzg() {
        Parcel zzcZ = zzcZ(25, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final float zzh() {
        Parcel zzcZ = zzcZ(24, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final Bundle zzi() {
        Parcel zzcZ = zzcZ(16, zza());
        Bundle bundle = (Bundle) zzayc.zza(zzcZ, Bundle.CREATOR);
        zzcZ.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final com.google.android.gms.ads.internal.client.zzeb zzj() {
        Parcel zzcZ = zzcZ(11, zza());
        com.google.android.gms.ads.internal.client.zzeb zzb = com.google.android.gms.ads.internal.client.zzea.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final zzbfp zzk() {
        Parcel zzcZ = zzcZ(12, zza());
        zzbfp zzj = zzbfo.zzj(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final zzbfw zzl() {
        Parcel zzcZ = zzcZ(5, zza());
        zzbfw zzg = zzbfv.zzg(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final InterfaceC0456Qm zzm() {
        return V1.m2504new(zzcZ(13, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final InterfaceC0456Qm zzn() {
        return V1.m2504new(zzcZ(14, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final InterfaceC0456Qm zzo() {
        return V1.m2504new(zzcZ(15, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzp() {
        Parcel zzcZ = zzcZ(7, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzq() {
        Parcel zzcZ = zzcZ(4, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzr() {
        Parcel zzcZ = zzcZ(6, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzs() {
        Parcel zzcZ = zzcZ(2, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzt() {
        Parcel zzcZ = zzcZ(10, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzu() {
        Parcel zzcZ = zzcZ(9, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final List zzv() {
        Parcel zzcZ = zzcZ(3, zza());
        ArrayList zzb = zzayc.zzb(zzcZ);
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzw(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzx() {
        zzda(19, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzy(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, interfaceC0456Qm2);
        zzayc.zzf(zza, interfaceC0456Qm3);
        zzda(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzz(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(22, zza);
    }
}
