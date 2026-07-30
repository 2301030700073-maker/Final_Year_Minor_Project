package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbks extends zzaya implements zzbku {
    public zzbks(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbku
    public final zzbkr zze(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i, zzbko zzbkoVar) {
        zzbkr zzbkpVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        zzayc.zzf(zza, zzbkoVar);
        Parcel zzcZ = zzcZ(1, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbkpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbkpVar = queryLocalInterface instanceof zzbkr ? (zzbkr) queryLocalInterface : new zzbkp(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbkpVar;
    }
}
