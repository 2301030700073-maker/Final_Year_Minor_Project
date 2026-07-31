package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbju extends zzbal implements zzbjw {
    zzbju(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zze(zzbkc zzbkcVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbkcVar);
        zzdf(1, zza);
    }
}
