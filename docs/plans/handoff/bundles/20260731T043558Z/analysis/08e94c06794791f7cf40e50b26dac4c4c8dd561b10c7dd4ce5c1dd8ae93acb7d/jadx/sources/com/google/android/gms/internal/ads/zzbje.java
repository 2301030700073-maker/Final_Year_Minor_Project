package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbje extends zzbal implements zzbjg {
    zzbje(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbjg
    public final void zze(zzbix zzbixVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbixVar);
        zzdf(1, zza);
    }
}
