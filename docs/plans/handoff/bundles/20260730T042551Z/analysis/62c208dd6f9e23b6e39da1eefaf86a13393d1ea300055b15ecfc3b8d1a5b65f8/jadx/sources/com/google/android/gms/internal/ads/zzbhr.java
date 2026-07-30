package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbhr extends zzaya implements zzbht {
    public zzbhr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzA() {
        zzda(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzB(Bundle bundle) {
        Parcel zza = zza();
        zzayc.zzd(zza, bundle);
        zzda(33, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzC(Bundle bundle) {
        Parcel zza = zza();
        zzayc.zzd(zza, bundle);
        zzda(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzD() {
        zzda(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzE(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzddVar);
        zzda(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzF(com.google.android.gms.ads.internal.client.zzdr zzdrVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzdrVar);
        zzda(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzG(zzbhq zzbhqVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbhqVar);
        zzda(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final boolean zzH() {
        Parcel zzcZ = zzcZ(30, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final boolean zzI() {
        Parcel zzcZ = zzcZ(24, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final boolean zzJ(Bundle bundle) {
        Parcel zza = zza();
        zzayc.zzd(zza, bundle);
        Parcel zzcZ = zzcZ(16, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final double zze() {
        Parcel zzcZ = zzcZ(8, zza());
        double readDouble = zzcZ.readDouble();
        zzcZ.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final Bundle zzf() {
        Parcel zzcZ = zzcZ(20, zza());
        Bundle bundle = (Bundle) zzayc.zza(zzcZ, Bundle.CREATOR);
        zzcZ.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final com.google.android.gms.ads.internal.client.zzdy zzg() {
        Parcel zzcZ = zzcZ(31, zza());
        com.google.android.gms.ads.internal.client.zzdy zzb = com.google.android.gms.ads.internal.client.zzdx.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final com.google.android.gms.ads.internal.client.zzeb zzh() {
        Parcel zzcZ = zzcZ(11, zza());
        com.google.android.gms.ads.internal.client.zzeb zzb = com.google.android.gms.ads.internal.client.zzea.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final zzbfp zzi() {
        zzbfp zzbfnVar;
        Parcel zzcZ = zzcZ(14, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbfnVar = queryLocalInterface instanceof zzbfp ? (zzbfp) queryLocalInterface : new zzbfn(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbfnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final zzbft zzj() {
        zzbft zzbfrVar;
        Parcel zzcZ = zzcZ(29, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbfrVar = queryLocalInterface instanceof zzbft ? (zzbft) queryLocalInterface : new zzbfr(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbfrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final zzbfw zzk() {
        zzbfw zzbfuVar;
        Parcel zzcZ = zzcZ(5, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbfuVar = queryLocalInterface instanceof zzbfw ? (zzbfw) queryLocalInterface : new zzbfu(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbfuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final InterfaceC0456Qm zzl() {
        return V1.m2504new(zzcZ(19, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final InterfaceC0456Qm zzm() {
        return V1.m2504new(zzcZ(18, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzn() {
        Parcel zzcZ = zzcZ(7, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzo() {
        Parcel zzcZ = zzcZ(4, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzp() {
        Parcel zzcZ = zzcZ(6, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzq() {
        Parcel zzcZ = zzcZ(2, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzr() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzs() {
        Parcel zzcZ = zzcZ(10, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzt() {
        Parcel zzcZ = zzcZ(9, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final List zzu() {
        Parcel zzcZ = zzcZ(3, zza());
        ArrayList zzb = zzayc.zzb(zzcZ);
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final List zzv() {
        Parcel zzcZ = zzcZ(23, zza());
        ArrayList zzb = zzayc.zzb(zzcZ);
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzw() {
        zzda(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzx() {
        zzda(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzy(com.google.android.gms.ads.internal.client.zzdh zzdhVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzdhVar);
        zzda(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzz(Bundle bundle) {
        Parcel zza = zza();
        zzayc.zzd(zza, bundle);
        zzda(15, zza);
    }
}
