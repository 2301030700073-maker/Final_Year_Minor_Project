package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbgo extends zzaya implements zzbgq {
    public zzbgo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final com.google.android.gms.ads.internal.client.zzeb zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final zzbft zzf() {
        zzbft zzbfrVar;
        Parcel zzcZ = zzcZ(16, zza());
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

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final zzbfw zzg(String str) {
        zzbfw zzbfuVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzcZ = zzcZ(2, zza);
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

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final InterfaceC0456Qm zzh() {
        return V1.m2504new(zzcZ(9, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final String zzi() {
        Parcel zzcZ = zzcZ(4, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final String zzj(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzcZ = zzcZ(1, zza);
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final List zzk() {
        Parcel zzcZ = zzcZ(3, zza());
        ArrayList<String> createStringArrayList = zzcZ.createStringArrayList();
        zzcZ.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzl() {
        zzda(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzm() {
        zzda(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzn(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzo() {
        zzda(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzp(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzq() {
        Parcel zzcZ = zzcZ(12, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzr(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        Parcel zzcZ = zzcZ(17, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzs(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        Parcel zzcZ = zzcZ(10, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzt() {
        Parcel zzcZ = zzcZ(13, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
