package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzblg extends zzaya {
    public zzblg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzbla zzblaVar, zzblf zzblfVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzblaVar);
        zzayc.zzf(zza, zzblfVar);
        zzdb(2, zza);
    }
}
