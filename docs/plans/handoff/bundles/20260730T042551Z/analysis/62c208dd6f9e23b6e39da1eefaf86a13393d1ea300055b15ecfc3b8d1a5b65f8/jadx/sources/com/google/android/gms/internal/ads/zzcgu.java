package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzcgu extends zzaya implements zzcgw {
    public zzcgu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.measurement.IMeasurementManager");
    }

    @Override // com.google.android.gms.internal.ads.zzcgw
    public final void zze(InterfaceC0456Qm interfaceC0456Qm, zzcgt zzcgtVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzcgtVar);
        zzda(2, zza);
    }
}
