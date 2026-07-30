package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbvd extends zzaya {
    public zzbvd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
    }

    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbbVar);
        zzda(2, zza);
    }

    public final void zzf(String str, zzbuu zzbuuVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayc.zzd(zza, zzbuuVar);
        zzda(1, zza);
    }
}
