package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zzbfr extends zzaya implements zzbft {
    public zzbfr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final float zze() {
        Parcel zzcZ = zzcZ(2, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final float zzf() {
        Parcel zzcZ = zzcZ(6, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final float zzg() {
        Parcel zzcZ = zzcZ(5, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final com.google.android.gms.ads.internal.client.zzeb zzh() {
        Parcel zzcZ = zzcZ(7, zza());
        com.google.android.gms.ads.internal.client.zzeb zzb = com.google.android.gms.ads.internal.client.zzea.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final InterfaceC0456Qm zzi() {
        return V1.m2504new(zzcZ(4, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzj(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zzk() {
        Parcel zzcZ = zzcZ(10, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zzl() {
        Parcel zzcZ = zzcZ(8, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzm(zzbhe zzbheVar) {
        throw null;
    }
}
