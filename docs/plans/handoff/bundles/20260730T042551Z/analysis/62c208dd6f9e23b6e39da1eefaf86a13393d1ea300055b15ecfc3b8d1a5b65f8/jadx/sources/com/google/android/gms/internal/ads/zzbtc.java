package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbtc extends zzaya implements zzbte {
    public zzbtc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final boolean zzH() {
        Parcel zzcZ = zzcZ(11, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzh(int i, int i2, Intent intent) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeInt(i2);
        zzayc.zzd(zza, intent);
        zzda(12, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzi() {
        zzda(10, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzk(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzl(Bundle bundle) {
        Parcel zza = zza();
        zzayc.zzd(zza, bundle);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzm() {
        zzda(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzo() {
        zzda(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzp(int i, String[] strArr, int[] iArr) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeStringArray(strArr);
        zza.writeIntArray(iArr);
        zzda(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzq() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzr() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzs(Bundle bundle) {
        Parcel zza = zza();
        zzayc.zzd(zza, bundle);
        Parcel zzcZ = zzcZ(6, zza);
        if (zzcZ.readInt() != 0) {
            bundle.readFromParcel(zzcZ);
        }
        zzcZ.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzt() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzu() {
        zzda(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzv() {
        zzda(14, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzx() {
        zzda(9, zza());
    }
}
