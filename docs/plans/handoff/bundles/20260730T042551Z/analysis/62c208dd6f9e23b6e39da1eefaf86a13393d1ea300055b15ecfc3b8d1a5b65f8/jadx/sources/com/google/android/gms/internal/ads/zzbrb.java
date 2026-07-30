package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbrb extends zzaya implements zzbrd {
    public zzbrb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final com.google.android.gms.ads.internal.client.zzeb zze() {
        Parcel zzcZ = zzcZ(5, zza());
        com.google.android.gms.ads.internal.client.zzeb zzb = com.google.android.gms.ads.internal.client.zzea.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final zzbrs zzf() {
        Parcel zzcZ = zzcZ(2, zza());
        zzbrs zzbrsVar = (zzbrs) zzayc.zza(zzcZ, zzbrs.CREATOR);
        zzcZ.recycle();
        return zzbrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final zzbrs zzg() {
        Parcel zzcZ = zzcZ(3, zza());
        zzbrs zzbrsVar = (zzbrs) zzayc.zza(zzcZ, zzbrs.CREATOR);
        zzcZ.recycle();
        return zzbrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzh(InterfaceC0456Qm interfaceC0456Qm, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzs zzsVar, zzbrg zzbrgVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeString(str);
        zzayc.zzd(zza, bundle);
        zzayc.zzd(zza, bundle2);
        zzayc.zzd(zza, zzsVar);
        zzayc.zzf(zza, zzbrgVar);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbqo zzbqoVar, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbqoVar);
        zzayc.zzf(zza, zzbpkVar);
        zzda(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbqr zzbqrVar, zzbpk zzbpkVar, com.google.android.gms.ads.internal.client.zzs zzsVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbqrVar);
        zzayc.zzf(zza, zzbpkVar);
        zzayc.zzd(zza, zzsVar);
        zzda(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzk(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbqr zzbqrVar, zzbpk zzbpkVar, com.google.android.gms.ads.internal.client.zzs zzsVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbqrVar);
        zzayc.zzf(zza, zzbpkVar);
        zzayc.zzd(zza, zzsVar);
        zzda(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbqu zzbquVar, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbquVar);
        zzayc.zzf(zza, zzbpkVar);
        zzda(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzm(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbqx zzbqxVar, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbqxVar);
        zzayc.zzf(zza, zzbpkVar);
        zzda(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbqx zzbqxVar, zzbpk zzbpkVar, zzbfl zzbflVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbqxVar);
        zzayc.zzf(zza, zzbpkVar);
        zzayc.zzd(zza, zzbflVar);
        zzda(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzo(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbra zzbraVar, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbraVar);
        zzayc.zzf(zza, zzbpkVar);
        zzda(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, InterfaceC0456Qm interfaceC0456Qm, zzbra zzbraVar, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbraVar);
        zzayc.zzf(zza, zzbpkVar);
        zzda(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzq(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final boolean zzr(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        Parcel zzcZ = zzcZ(24, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final boolean zzs(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        Parcel zzcZ = zzcZ(15, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final boolean zzt(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        Parcel zzcZ = zzcZ(17, zza);
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
