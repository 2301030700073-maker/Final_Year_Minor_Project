package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzdv extends zzaya {
    public zzdv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
    }

    public final zzdu zze(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        zzdu zzdsVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(1, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzdsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            zzdsVar = queryLocalInterface instanceof zzdu ? (zzdu) queryLocalInterface : new zzds(readStrongBinder);
        }
        zzcZ.recycle();
        return zzdsVar;
    }
}
