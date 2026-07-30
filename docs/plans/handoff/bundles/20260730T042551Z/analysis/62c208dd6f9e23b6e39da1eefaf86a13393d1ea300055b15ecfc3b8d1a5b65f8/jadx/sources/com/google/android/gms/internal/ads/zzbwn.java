package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbwn extends zzaya implements zzbwp {
    public zzbwn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final Bundle zzb() {
        Parcel zzcZ = zzcZ(9, zza());
        Bundle bundle = (Bundle) zzayc.zza(zzcZ, Bundle.CREATOR);
        zzcZ.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final com.google.android.gms.ads.internal.client.zzdy zzc() {
        Parcel zzcZ = zzcZ(12, zza());
        com.google.android.gms.ads.internal.client.zzdy zzb = com.google.android.gms.ads.internal.client.zzdx.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final zzbwm zzd() {
        zzbwm zzbwkVar;
        Parcel zzcZ = zzcZ(11, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzbwkVar = queryLocalInterface instanceof zzbwm ? (zzbwm) queryLocalInterface : new zzbwk(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbwkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final String zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzf(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbww zzbwwVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, zzbwwVar);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzg(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbww zzbwwVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzmVar);
        zzayc.zzf(zza, zzbwwVar);
        zzda(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzh(boolean z) {
        Parcel zza = zza();
        int i = zzayc.zza;
        zza.writeInt(z ? 1 : 0);
        zzda(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzi(com.google.android.gms.ads.internal.client.zzdo zzdoVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzdoVar);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzj(com.google.android.gms.ads.internal.client.zzdr zzdrVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzdrVar);
        zzda(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzk(zzbws zzbwsVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbwsVar);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzl(zzbxd zzbxdVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbxdVar);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzm(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzn(InterfaceC0456Qm interfaceC0456Qm, boolean z) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final boolean zzo() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwp
    public final void zzp(zzbwx zzbwxVar) {
        throw null;
    }
}
