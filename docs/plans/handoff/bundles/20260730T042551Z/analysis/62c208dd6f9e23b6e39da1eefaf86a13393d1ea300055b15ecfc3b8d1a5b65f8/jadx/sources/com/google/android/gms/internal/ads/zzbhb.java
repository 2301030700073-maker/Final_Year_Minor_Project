package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbhb extends zzaya implements zzbhd {
    public zzbhb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zze(zzbgq zzbgqVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbgqVar);
        zzda(1, zza);
    }
}
