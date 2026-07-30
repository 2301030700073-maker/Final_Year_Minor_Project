package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbln;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.InterfaceC0456Qm;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcx extends zzaya implements zzcz {
    public zzcx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final float zze() {
        Parcel zzcZ = zzcZ(7, zza());
        float readFloat = zzcZ.readFloat();
        zzcZ.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final String zzf() {
        Parcel zzcZ = zzcZ(9, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final List zzg() {
        Parcel zzcZ = zzcZ(13, zza());
        ArrayList createTypedArrayList = zzcZ.createTypedArrayList(zzbln.CREATOR);
        zzcZ.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzh(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzi() {
        zzda(15, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzj(boolean z) {
        Parcel zza = zza();
        int i = zzayc.zza;
        zza.writeInt(z ? 1 : 0);
        zzda(17, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzk() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzl(String str, InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zza.writeString(null);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzm(zzdl zzdlVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzdlVar);
        zzda(16, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzn(InterfaceC0456Qm interfaceC0456Qm, String str) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeString(str);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzo(zzbpe zzbpeVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbpeVar);
        zzda(11, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzp(boolean z) {
        Parcel zza = zza();
        int i = zzayc.zza;
        zza.writeInt(z ? 1 : 0);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzq(float f) {
        Parcel zza = zza();
        zza.writeFloat(f);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzr(String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzs(zzblu zzbluVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbluVar);
        zzda(12, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzt(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(18, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzu(zzfv zzfvVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzfvVar);
        zzda(14, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final boolean zzv() {
        Parcel zzcZ = zzcZ(8, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
