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
public final class zzbrv extends zzbal implements IInterface {
    zzbrv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    public final String zze() throws RemoteException {
        Parcel zzde = zzde(2, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    public final List zzf() throws RemoteException {
        Parcel zzde = zzde(3, zza());
        ArrayList zzf = zzban.zzf(zzde);
        zzde.recycle();
        return zzf;
    }

    public final String zzg() throws RemoteException {
        Parcel zzde = zzde(4, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    public final zzbii zzh() throws RemoteException {
        Parcel zzde = zzde(5, zza());
        zzbii zzh = zzbih.zzh(zzde.readStrongBinder());
        zzde.recycle();
        return zzh;
    }

    public final String zzi() throws RemoteException {
        Parcel zzde = zzde(6, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    public final String zzj() throws RemoteException {
        Parcel zzde = zzde(7, zza());
        String readString = zzde.readString();
        zzde.recycle();
        return readString;
    }

    public final void zzk() throws RemoteException {
        zzdf(8, zza());
    }

    public final void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(9, zza);
    }

    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(10, zza);
    }

    public final boolean zzn() throws RemoteException {
        Parcel zzde = zzde(11, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    public final boolean zzo() throws RemoteException {
        Parcel zzde = zzde(12, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    public final Bundle zzp() throws RemoteException {
        Parcel zzde = zzde(13, zza());
        Bundle bundle = (Bundle) zzban.zzb(zzde, Bundle.CREATOR);
        zzde.recycle();
        return bundle;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(14, zza);
    }

    public final IObjectWrapper zzr() throws RemoteException {
        Parcel zzde = zzde(15, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    public final com.google.android.gms.ads.internal.client.zzed zzs() throws RemoteException {
        Parcel zzde = zzde(16, zza());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(zzde.readStrongBinder());
        zzde.recycle();
        return zzb;
    }

    public final zzbib zzt() throws RemoteException {
        Parcel zzde = zzde(19, zza());
        zzbib zzj = zzbia.zzj(zzde.readStrongBinder());
        zzde.recycle();
        return zzj;
    }

    public final IObjectWrapper zzu() throws RemoteException {
        Parcel zzde = zzde(20, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    public final IObjectWrapper zzv() throws RemoteException {
        Parcel zzde = zzde(21, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }

    public final void zzw(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, iObjectWrapper2);
        zzban.zze(zza, iObjectWrapper3);
        zzdf(22, zza);
    }
}
