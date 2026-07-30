package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zzbfu extends zzaya implements zzbfw {
    public zzbfu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final double zzb() {
        Parcel zzcZ = zzcZ(3, zza());
        double readDouble = zzcZ.readDouble();
        zzcZ.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final int zzc() {
        Parcel zzcZ = zzcZ(5, zza());
        int readInt = zzcZ.readInt();
        zzcZ.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final int zzd() {
        Parcel zzcZ = zzcZ(4, zza());
        int readInt = zzcZ.readInt();
        zzcZ.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final Uri zze() {
        Parcel zzcZ = zzcZ(2, zza());
        Uri uri = (Uri) zzayc.zza(zzcZ, Uri.CREATOR);
        zzcZ.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final InterfaceC0456Qm zzf() {
        return V1.m2504new(zzcZ(1, zza()));
    }
}
