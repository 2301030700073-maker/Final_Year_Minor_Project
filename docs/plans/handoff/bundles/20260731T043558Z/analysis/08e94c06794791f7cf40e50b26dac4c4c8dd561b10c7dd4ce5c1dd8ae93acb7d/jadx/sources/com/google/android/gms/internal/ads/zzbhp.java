package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbhp extends zzbal implements IInterface {
    zzbhp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
    }

    public final void zze(zzbwl zzbwlVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbwlVar);
        zzdf(1, zza);
    }
}
