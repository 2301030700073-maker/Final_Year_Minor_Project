package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbnp extends zzbal implements IInterface {
    zzbnp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzbnj zzbnjVar, zzbno zzbnoVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbnjVar);
        zzban.zze(zza, zzbnoVar);
        zzdg(2, zza);
    }
}
