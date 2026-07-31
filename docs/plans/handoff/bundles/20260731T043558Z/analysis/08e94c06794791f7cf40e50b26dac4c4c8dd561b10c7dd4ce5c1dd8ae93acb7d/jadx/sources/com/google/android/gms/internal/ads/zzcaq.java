package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcaq extends zzbal implements zzcas {
    zzcaq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zze(IObjectWrapper iObjectWrapper, zzcaw zzcawVar, zzcap zzcapVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzcawVar);
        zzban.zze(zza, zzcapVar);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzbvx zzbvxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbvx zzbvxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzi(zzbwa zzbwaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzbvx zzbvxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbvx zzbvxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public final IObjectWrapper zzm(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, iObjectWrapper2);
        zza.writeString(str);
        zzban.zze(zza, iObjectWrapper3);
        Parcel zzde = zzde(11, zza);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzde.readStrongBinder());
        zzde.recycle();
        return asInterface;
    }
}
