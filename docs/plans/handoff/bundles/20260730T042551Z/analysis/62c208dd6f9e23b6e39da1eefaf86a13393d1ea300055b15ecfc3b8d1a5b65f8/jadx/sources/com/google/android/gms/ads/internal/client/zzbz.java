package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbz extends zzaya {
    public zzbz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder zze(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i, int i2) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        zza.writeInt(i2);
        Parcel zzcZ = zzcZ(2, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        zzcZ.recycle();
        return readStrongBinder;
    }
}
