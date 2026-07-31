package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbal;
import com.google.android.gms.internal.ads.zzban;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbm extends zzbal implements zzbo {
    zzbm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbo
    public final boolean zze(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeString(str2);
        Parcel zzde = zzde(1, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzbo
    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzdf(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbo
    public final boolean zzg(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zzc(zza, zzaVar);
        Parcel zzde = zzde(3, zza);
        boolean zza2 = zzban.zza(zzde);
        zzde.recycle();
        return zza2;
    }
}
