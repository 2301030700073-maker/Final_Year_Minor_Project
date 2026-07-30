package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbpp extends zzaya {
    public zzbpp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final double zze() {
        Parcel zzcZ = zzcZ(7, zza());
        double readDouble = zzcZ.readDouble();
        zzcZ.recycle();
        return readDouble;
    }

    public final Bundle zzf() {
        Parcel zzcZ = zzcZ(15, zza());
        Bundle bundle = (Bundle) zzayc.zza(zzcZ, Bundle.CREATOR);
        zzcZ.recycle();
        return bundle;
    }

    public final com.google.android.gms.ads.internal.client.zzeb zzg() {
        Parcel zzcZ = zzcZ(17, zza());
        com.google.android.gms.ads.internal.client.zzeb zzb = com.google.android.gms.ads.internal.client.zzea.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    public final zzbfp zzh() {
        Parcel zzcZ = zzcZ(19, zza());
        zzbfp zzj = zzbfo.zzj(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzj;
    }

    public final zzbfw zzi() {
        Parcel zzcZ = zzcZ(5, zza());
        zzbfw zzg = zzbfv.zzg(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzg;
    }

    public final InterfaceC0456Qm zzj() {
        return V1.m2504new(zzcZ(18, zza()));
    }

    public final InterfaceC0456Qm zzk() {
        return V1.m2504new(zzcZ(20, zza()));
    }

    public final InterfaceC0456Qm zzl() {
        return V1.m2504new(zzcZ(21, zza()));
    }

    public final String zzm() {
        Parcel zzcZ = zzcZ(4, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    public final String zzn() {
        Parcel zzcZ = zzcZ(6, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    public final String zzo() {
        Parcel zzcZ = zzcZ(2, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    public final String zzp() {
        Parcel zzcZ = zzcZ(9, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    public final String zzq() {
        Parcel zzcZ = zzcZ(8, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    public final List zzr() {
        Parcel zzcZ = zzcZ(3, zza());
        ArrayList zzb = zzayc.zzb(zzcZ);
        zzcZ.recycle();
        return zzb;
    }

    public final void zzs(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(11, zza);
    }

    public final void zzt() {
        zzda(10, zza());
    }

    public final void zzu(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(12, zza);
    }

    public final void zzv(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, interfaceC0456Qm2);
        zzayc.zzf(zza, interfaceC0456Qm3);
        zzda(22, zza);
    }

    public final void zzw(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(16, zza);
    }

    public final boolean zzx() {
        Parcel zzcZ = zzcZ(14, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    public final boolean zzy() {
        Parcel zzcZ = zzcZ(13, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
