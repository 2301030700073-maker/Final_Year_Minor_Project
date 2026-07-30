package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbpf extends zzaya implements zzbph {
    public zzbpf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzA(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpkVar);
        zzda(28, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzB(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzC(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpkVar);
        zzda(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzD(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzE() {
        zzda(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzF() {
        zzda(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzG(boolean z) {
        Parcel zza = zza();
        int i = zzayc.zza;
        zza.writeInt(z ? 1 : 0);
        zzda(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzH(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzI() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzJ(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzK(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzL() {
        zzda(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final boolean zzM() {
        Parcel zzcZ = zzcZ(22, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final boolean zzN() {
        Parcel zzcZ = zzcZ(13, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbpp zzO() {
        zzbpp zzbppVar;
        Parcel zzcZ = zzcZ(15, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbppVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbppVar = queryLocalInterface instanceof zzbpp ? (zzbpp) queryLocalInterface : new zzbpp(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbppVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbpq zzP() {
        zzbpq zzbpqVar;
        Parcel zzcZ = zzcZ(16, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbpqVar = queryLocalInterface instanceof zzbpq ? (zzbpq) queryLocalInterface : new zzbpq(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbpqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final Bundle zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final Bundle zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final Bundle zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final com.google.android.gms.ads.internal.client.zzeb zzh() {
        Parcel zzcZ = zzcZ(26, zza());
        com.google.android.gms.ads.internal.client.zzeb zzb = com.google.android.gms.ads.internal.client.zzea.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbgq zzi() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbpn zzj() {
        zzbpn zzbplVar;
        Parcel zzcZ = zzcZ(36, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbplVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbplVar = queryLocalInterface instanceof zzbpn ? (zzbpn) queryLocalInterface : new zzbpl(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbplVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbpt zzk() {
        zzbpt zzbprVar;
        Parcel zzcZ = zzcZ(27, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbprVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbprVar = queryLocalInterface instanceof zzbpt ? (zzbpt) queryLocalInterface : new zzbpr(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbprVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbrs zzl() {
        Parcel zzcZ = zzcZ(33, zza());
        zzbrs zzbrsVar = (zzbrs) zzayc.zza(zzcZ, zzbrs.CREATOR);
        zzcZ.recycle();
        return zzbrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final zzbrs zzm() {
        Parcel zzcZ = zzcZ(34, zza());
        zzbrs zzbrsVar = (zzbrs) zzayc.zza(zzcZ, zzbrs.CREATOR);
        zzcZ.recycle();
        return zzbrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final InterfaceC0456Qm zzn() {
        return V1.m2504new(zzcZ(2, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzo() {
        zzda(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzp(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbwh zzbwhVar, String str2) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(null);
        zzayc.zzf(zza, zzbwhVar);
        zza.writeString(str2);
        zzda(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzq(InterfaceC0456Qm interfaceC0456Qm, zzblr zzblrVar, List list) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzblrVar);
        zza.writeTypedList(list);
        zzda(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzr(InterfaceC0456Qm interfaceC0456Qm, zzbwh zzbwhVar, List list) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbwhVar);
        zza.writeStringList(list);
        zzda(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzs(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zzda(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzt(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpkVar);
        zzda(38, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzu(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzs zzsVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpk zzbpkVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzv(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzs zzsVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzf(zza, zzbpkVar);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzw(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzs zzsVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzf(zza, zzbpkVar);
        zzda(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzx(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpk zzbpkVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzy(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzf(zza, zzbpkVar);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzz(InterfaceC0456Qm interfaceC0456Qm, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpk zzbpkVar, zzbfl zzbflVar, List list) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayc.zzf(zza, zzbpkVar);
        zzayc.zzd(zza, zzbflVar);
        zza.writeStringList(list);
        zzda(14, zza);
    }
}
