package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbpi extends zzaya implements zzbpk {
    public zzbpi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zze() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzf() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzg(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzh(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzi(int i, String str) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeString(str);
        zzda(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzj(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzeVar);
        zzda(24, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzl(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzm() {
        zzda(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzn() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzo() {
        zzda(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzp() {
        zzda(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzq(String str, String str2) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzda(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzr(zzbgq zzbgqVar, String str) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbgqVar);
        zza.writeString(str);
        zzda(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzs(zzbwi zzbwiVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzt(zzbwm zzbwmVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbwmVar);
        zzda(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzu() {
        zzda(18, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzv() {
        zzda(11, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzw() {
        zzda(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzx() {
        zzda(20, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzy() {
        zzda(13, zza());
    }
}
