package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbal;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbcq;
import com.google.android.gms.internal.ads.zzbfp;
import com.google.android.gms.internal.ads.zzbvr;
import com.google.android.gms.internal.ads.zzbvu;
import com.google.android.gms.internal.ads.zzbyb;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbv extends zzbal implements zzbx {
    zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzA() throws RemoteException {
        Parcel zzde = zzde(46, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzB() throws RemoteException {
        Parcel zzde = zzde(23, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbyb zzbybVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzed zzF() throws RemoteException {
        zzed zzebVar;
        Parcel zzde = zzde(26, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzebVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzebVar = queryLocalInterface instanceof zzed ? (zzed) queryLocalInterface : new zzeb(readStrongBinder);
        }
        zzde.recycle();
        return zzebVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(zzga zzgaVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzgaVar);
        zzdf(29, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(zzeh zzehVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(zzx zzxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzbcq zzbcqVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbcqVar);
        zzdf(40, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzK(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzban.zza;
        zza.writeInt(z ? 1 : 0);
        zzdf(34, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(zzdt zzdtVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzdtVar);
        zzdf(42, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(zzm zzmVar, zzbn zzbnVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        zzban.zze(zza, zzbnVar);
        zzdf(43, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(44, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(zzcv zzcvVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzcvVar);
        zzdf(45, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzT(long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zzdf(48, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final long zzU() throws RemoteException {
        Parcel zzde = zzde(47, zza());
        long readLong = zzde.readLong();
        zzde.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzY(zzcs zzcsVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() throws RemoteException {
        Parcel zzde = zzde(1, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzc() throws RemoteException {
        zzdf(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzd() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdW(zzbk zzbkVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbkVar);
        zzdf(7, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zze(zzm zzmVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        Parcel zzde = zzde(4, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzf() throws RemoteException {
        zzdf(5, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzg() throws RemoteException {
        zzdf(6, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(zzco zzcoVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzcoVar);
        zzdf(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzj(zzcb zzcbVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzk() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzl() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzm() throws RemoteException {
        zzdf(11, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzr zzn() throws RemoteException {
        Parcel zzde = zzde(12, zza());
        zzr zzrVar = (zzr) zzban.zzb(zzde, zzr.CREATOR);
        zzde.recycle();
        return zzrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzo(zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzrVar);
        zzdf(13, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbvr zzbvrVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbvu zzbvuVar, String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzr() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzs() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzea zzt() throws RemoteException {
        zzea zzdyVar;
        Parcel zzde = zzde(41, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzdyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzdyVar = queryLocalInterface instanceof zzea ? (zzea) queryLocalInterface : new zzdy(readStrongBinder);
        }
        zzde.recycle();
        return zzdyVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzu() throws RemoteException {
        Parcel zzde = zzde(31, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzco zzv() throws RemoteException {
        zzco zzcmVar;
        Parcel zzde = zzde(32, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzcmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzcmVar = queryLocalInterface instanceof zzco ? (zzco) queryLocalInterface : new zzcm(readStrongBinder);
        }
        zzde.recycle();
        return zzcmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzbk zzw() throws RemoteException {
        zzbk zzbiVar;
        Parcel zzde = zzde(33, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzbiVar = queryLocalInterface instanceof zzbk ? (zzbk) queryLocalInterface : new zzbi(readStrongBinder);
        }
        zzde.recycle();
        return zzbiVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzx(zzbfp zzbfpVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(zzbh zzbhVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbhVar);
        zzdf(20, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzz(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzban.zza;
        zza.writeInt(z ? 1 : 0);
        zzdf(22, zza);
    }
}
