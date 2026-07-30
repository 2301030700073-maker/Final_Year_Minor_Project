package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbxc extends zzbal implements IInterface {
    zzbxc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
    }

    public final void zze(String str, zzbwt zzbwtVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzban.zzc(zza, zzbwtVar);
        zzdf(1, zza);
    }

    public final void zzf(com.google.android.gms.ads.internal.util.zzba zzbaVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbaVar);
        zzdf(2, zza);
    }
}
