package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbyv extends zzaya implements zzbyx {
    public zzbyv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final zzbyu zze(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        zzbyu zzbysVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(2, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbysVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzbysVar = queryLocalInterface instanceof zzbyu ? (zzbyu) queryLocalInterface : new zzbys(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbysVar;
    }
}
