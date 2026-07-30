package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzds extends zzaya implements zzdu {
    public zzds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOutOfContextTester");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdu
    public final void zze(String str, InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, interfaceC0456Qm2);
        zzda(1, zza);
    }
}
