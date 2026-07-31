package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfsz extends zzbal implements IInterface {
    zzfsz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfsx zze(zzfsv zzfsvVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzfsvVar);
        Parcel zzde = zzde(1, zza);
        zzfsx zzfsxVar = (zzfsx) zzban.zzb(zzde, zzfsx.CREATOR);
        zzde.recycle();
        return zzfsxVar;
    }

    public final void zzf(zzfss zzfssVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzfssVar);
        zzdf(2, zza);
    }

    public final zzftg zzg(zzfte zzfteVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzfteVar);
        Parcel zzde = zzde(3, zza);
        zzftg zzftgVar = (zzftg) zzban.zzb(zzde, zzftg.CREATOR);
        zzde.recycle();
        return zzftgVar;
    }
}
