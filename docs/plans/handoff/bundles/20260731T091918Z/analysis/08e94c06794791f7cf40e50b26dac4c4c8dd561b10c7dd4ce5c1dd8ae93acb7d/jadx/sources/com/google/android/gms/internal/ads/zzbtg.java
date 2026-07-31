package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbtg extends zzbal implements zzbti {
    zzbtg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zze(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzr zzrVar, zzbtl zzbtlVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zzban.zzc(zza, bundle);
        zzban.zzc(zza, bundle2);
        zzban.zzc(zza, zzrVar);
        zzban.zze(zza, zzbtlVar);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final zzbtx zzf() throws RemoteException {
        Parcel zzde = zzde(2, zza());
        zzbtx zzbtxVar = (zzbtx) zzban.zzb(zzde, zzbtx.CREATOR);
        zzde.recycle();
        return zzbtxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final zzbtx zzg() throws RemoteException {
        Parcel zzde = zzde(3, zza());
        zzbtx zzbtxVar = (zzbtx) zzban.zzb(zzde, zzbtx.CREATOR);
        zzde.recycle();
        return zzbtxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final com.google.android.gms.ads.internal.client.zzed zzh() throws RemoteException {
        Parcel zzde = zzde(5, zza());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbsw zzbswVar, zzbrp zzbrpVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbswVar);
        zzban.zze(zza, zzbrpVar);
        zzban.zzc(zza, zzrVar);
        zzdf(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbsz zzbszVar, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbszVar);
        zzban.zze(zza, zzbrpVar);
        zzdf(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final boolean zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        Parcel zzde = zzde(15, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbtf zzbtfVar, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbtfVar);
        zzban.zze(zza, zzbrpVar);
        zzdf(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final boolean zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        Parcel zzde = zzde(17, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbtc zzbtcVar, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbtcVar);
        zzban.zze(zza, zzbrpVar);
        zzdf(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzo(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdf(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbtf zzbtfVar, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbtfVar);
        zzban.zze(zza, zzbrpVar);
        zzdf(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzq(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbsw zzbswVar, zzbrp zzbrpVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbswVar);
        zzban.zze(zza, zzbrpVar);
        zzban.zzc(zza, zzrVar);
        zzdf(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzr(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbtc zzbtcVar, zzbrp zzbrpVar, zzbhx zzbhxVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbtcVar);
        zzban.zze(zza, zzbrpVar);
        zzban.zzc(zza, zzbhxVar);
        zzdf(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final void zzs(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbst zzbstVar, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbstVar);
        zzban.zze(zza, zzbrpVar);
        zzdf(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final boolean zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        Parcel zzde = zzde(24, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }
}
