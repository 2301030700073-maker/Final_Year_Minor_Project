package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbwx extends zzaya {
    public zzbwx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbwm zzbwmVar, String str, String str2) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbwmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzda(2, zza);
    }
}
