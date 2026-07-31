package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbxw extends zzbal implements IInterface {
    zzbxw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbxv zzbxvVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbxvVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzdf(2, zza);
    }
}
