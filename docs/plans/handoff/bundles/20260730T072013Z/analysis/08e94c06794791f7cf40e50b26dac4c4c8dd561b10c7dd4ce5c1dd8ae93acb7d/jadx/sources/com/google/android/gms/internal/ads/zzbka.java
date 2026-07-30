package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbka extends zzbal implements zzbkc {
    zzbka(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final boolean zzA() throws RemoteException {
        Parcel zzde = zzde(24, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzB(com.google.android.gms.ads.internal.client.zzdj zzdjVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzdjVar);
        zzdf(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzC(com.google.android.gms.ads.internal.client.zzdf zzdfVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzdfVar);
        zzdf(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzD() throws RemoteException {
        zzdf(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzE() throws RemoteException {
        zzdf(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final zzbif zzF() throws RemoteException {
        zzbif zzbidVar;
        Parcel zzde = zzde(29, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbidVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbidVar = queryLocalInterface instanceof zzbif ? (zzbif) queryLocalInterface : new zzbid(readStrongBinder);
        }
        zzde.recycle();
        return zzbidVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final boolean zzG() throws RemoteException {
        Parcel zzde = zzde(30, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final com.google.android.gms.ads.internal.client.zzea zzH() throws RemoteException {
        Parcel zzde = zzde(31, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzI(com.google.android.gms.ads.internal.client.zzdt zzdtVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzdtVar);
        zzdf(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzJ(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, bundle);
        zzdf(33, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final long zzK() throws RemoteException {
        Parcel zzde = zzde(34, zza());
        long readLong = zzde.readLong();
        zzde.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzL(long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zzdf(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zze() throws RemoteException {
        Parcel zzde = zzde(2, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final List zzf() throws RemoteException {
        Parcel zzde = zzde(3, zza());
        ArrayList zzf = zzban.zzf(zzde);
        zzde.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zzg() throws RemoteException {
        Parcel zzde = zzde(4, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final zzbii zzh() throws RemoteException {
        zzbii zzbigVar;
        Parcel zzde = zzde(5, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbigVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbigVar = queryLocalInterface instanceof zzbii ? (zzbii) queryLocalInterface : new zzbig(readStrongBinder);
        }
        zzde.recycle();
        return zzbigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zzi() throws RemoteException {
        Parcel zzde = zzde(6, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zzj() throws RemoteException {
        Parcel zzde = zzde(7, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final double zzk() throws RemoteException {
        Parcel zzde = zzde(8, zza());
        double readDouble = zzde.readDouble();
        zzde.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zzl() throws RemoteException {
        Parcel zzde = zzde(9, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zzm() throws RemoteException {
        Parcel zzde = zzde(10, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final com.google.android.gms.ads.internal.client.zzed zzn() throws RemoteException {
        Parcel zzde = zzde(11, zza());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final String zzo() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzp() throws RemoteException {
        zzdf(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final zzbib zzq() throws RemoteException {
        zzbib zzbhzVar;
        Parcel zzde = zzde(14, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbhzVar = queryLocalInterface instanceof zzbib ? (zzbib) queryLocalInterface : new zzbhz(readStrongBinder);
        }
        zzde.recycle();
        return zzbhzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzr(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, bundle);
        zzdf(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final boolean zzs(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, bundle);
        Parcel zzde = zzde(16, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzt(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, bundle);
        zzdf(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final IObjectWrapper zzu() throws RemoteException {
        Parcel zzde = zzde(18, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final IObjectWrapper zzv() throws RemoteException {
        Parcel zzde = zzde(19, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final Bundle zzw() throws RemoteException {
        Parcel zzde = zzde(20, zza());
        Bundle bundle = (Bundle) zzban.zzb(zzde, Bundle.CREATOR);
        zzde.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzx(zzbjz zzbjzVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbjzVar);
        zzdf(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzy() throws RemoteException {
        zzdf(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final List zzz() throws RemoteException {
        Parcel zzde = zzde(23, zza());
        ArrayList zzf = zzban.zzf(zzde);
        zzde.recycle();
        return zzf;
    }
}
