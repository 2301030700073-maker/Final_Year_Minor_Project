package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zzbpl extends zzaya implements zzbpn {
    public zzbpl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbpn
    public final InterfaceC0456Qm zze() {
        return V1.m2504new(zzcZ(1, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbpn
    public final boolean zzf() {
        Parcel zzcZ = zzcZ(2, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
