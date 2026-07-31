package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbjr extends zzbal implements zzbjt {
    zzbjr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbjt
    public final void zze(com.google.android.gms.ads.internal.client.zzbx zzbxVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbxVar);
        zzban.zze(zza, iObjectWrapper);
        zzdf(1, zza);
    }
}
