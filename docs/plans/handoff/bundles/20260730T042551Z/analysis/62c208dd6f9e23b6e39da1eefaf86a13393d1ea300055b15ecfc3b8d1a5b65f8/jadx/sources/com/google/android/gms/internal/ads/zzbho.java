package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbho extends zzaya implements zzbhq {
    public zzbho(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhq
    public final void zze() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhq
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(1, zza);
    }
}
