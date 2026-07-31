package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbrh extends zzbal implements zzbrj {
    zzbrh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbrj
    public final zzbrm zzb(String str) throws RemoteException {
        zzbrm zzbrkVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzde = zzde(1, zza);
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbrkVar = queryLocalInterface instanceof zzbrm ? (zzbrm) queryLocalInterface : new zzbrk(readStrongBinder);
        }
        zzde.recycle();
        return zzbrkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrj
    public final boolean zzc(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzde = zzde(2, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbrj
    public final boolean zzd(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzde = zzde(4, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbrj
    public final zzbti zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzde = zzde(3, zza);
        zzbti zzb = zzbth.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }
}
