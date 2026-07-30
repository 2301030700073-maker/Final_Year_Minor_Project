package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbrk extends zzbal implements zzbrm {
    zzbrk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzA(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzban.zza;
        zza.writeInt(z ? 1 : 0);
        zzdf(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final com.google.android.gms.ads.internal.client.zzed zzB() throws RemoteException {
        Parcel zzde = zzde(26, zza());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbry zzC() throws RemoteException {
        zzbry zzbrwVar;
        Parcel zzde = zzde(27, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbrwVar = queryLocalInterface instanceof zzbry ? (zzbry) queryLocalInterface : new zzbrw(readStrongBinder);
        }
        zzde.recycle();
        return zzbrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzD(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zzban.zze(zza, zzbrpVar);
        zzdf(28, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzE(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzF(IObjectWrapper iObjectWrapper, zzboa zzboaVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzboaVar);
        zza.writeTypedList(list);
        zzdf(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzG(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zzban.zze(zza, zzbrpVar);
        zzdf(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbtx zzH() throws RemoteException {
        Parcel zzde = zzde(33, zza());
        zzbtx zzbtxVar = (zzbtx) zzban.zzb(zzde, zzbtx.CREATOR);
        zzde.recycle();
        return zzbtxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbtx zzI() throws RemoteException {
        Parcel zzde = zzde(34, zza());
        zzbtx zzbtxVar = (zzbtx) zzban.zzb(zzde, zzbtx.CREATOR);
        zzde.recycle();
        return zzbtxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzJ(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzrVar);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zze(zza, zzbrpVar);
        zzdf(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbrs zzK() throws RemoteException {
        zzbrs zzbrqVar;
        Parcel zzde = zzde(36, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbrqVar = queryLocalInterface instanceof zzbrs ? (zzbrs) queryLocalInterface : new zzbrq(readStrongBinder);
        }
        zzde.recycle();
        return zzbrqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzL(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzM(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zzban.zze(zza, zzbrpVar);
        zzdf(38, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzN(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbru zzO() throws RemoteException {
        zzbru zzbruVar;
        Parcel zzde = zzde(15, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbruVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbruVar = queryLocalInterface instanceof zzbru ? (zzbru) queryLocalInterface : new zzbru(readStrongBinder);
        }
        zzde.recycle();
        return zzbruVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbrv zzP() throws RemoteException {
        zzbrv zzbrvVar;
        Parcel zzde = zzde(16, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbrvVar = queryLocalInterface instanceof zzbrv ? (zzbrv) queryLocalInterface : new zzbrv(readStrongBinder);
        }
        zzde.recycle();
        return zzbrvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zze(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbrp zzbrpVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final IObjectWrapper zzf() throws RemoteException {
        Parcel zzde = zzde(2, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzg(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbrp zzbrpVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzh() throws RemoteException {
        zzdf(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzi() throws RemoteException {
        zzdf(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzrVar);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zze(zza, zzbrpVar);
        zzdf(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzk(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbrp zzbrpVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zze(zza, zzbrpVar);
        zzdf(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzl() throws RemoteException {
        zzdf(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzm() throws RemoteException {
        zzdf(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzn(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbyg zzbygVar, String str2) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzmVar);
        zza.writeString(null);
        zzban.zze(zza, zzbygVar);
        zza.writeString(str2);
        zzdf(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzo(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zzdf(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzp() throws RemoteException {
        zzdf(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final boolean zzq() throws RemoteException {
        Parcel zzde = zzde(13, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzr(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbrp zzbrpVar, zzbhx zzbhxVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzban.zze(zza, zzbrpVar);
        zzban.zzc(zza, zzbhxVar);
        zza.writeStringList(list);
        zzdf(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final Bundle zzs() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final Bundle zzt() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final Bundle zzu() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzv(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final boolean zzx() throws RemoteException {
        Parcel zzde = zzde(22, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzy(IObjectWrapper iObjectWrapper, zzbyg zzbygVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbygVar);
        zza.writeStringList(list);
        zzdf(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final zzbjc zzz() throws RemoteException {
        throw null;
    }
}
