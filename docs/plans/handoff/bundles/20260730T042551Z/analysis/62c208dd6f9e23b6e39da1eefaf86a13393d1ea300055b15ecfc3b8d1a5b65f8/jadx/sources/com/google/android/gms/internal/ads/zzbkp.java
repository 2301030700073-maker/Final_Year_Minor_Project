package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbkp extends zzaya implements zzbkr {
    public zzbkp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zze() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkr
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(1, zza);
    }
}
