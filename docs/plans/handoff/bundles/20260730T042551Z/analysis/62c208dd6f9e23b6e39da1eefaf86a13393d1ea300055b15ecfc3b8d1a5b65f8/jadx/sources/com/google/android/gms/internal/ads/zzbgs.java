package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbgs extends zzaya implements zzbgu {
    public zzbgs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbgu
    public final void zze(zzbgl zzbglVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbglVar);
        zzda(1, zza);
    }
}
