package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbvx extends zzaya {
    public zzbvx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbvw zzbvwVar, String str, String str2) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbvwVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzda(2, zza);
    }
}
