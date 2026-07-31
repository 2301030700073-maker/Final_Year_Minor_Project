package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbal;
import com.google.android.gms.internal.ads.zzban;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbo extends zzbal implements zzbq {
    zzbo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zze(zzm zzmVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final boolean zzg() throws RemoteException {
        Parcel zzde = zzde(3, zza());
        boolean zza = zzban.zza(zzde);
        zzde.recycle();
        return zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzh() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzi(zzm zzmVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzmVar);
        zza.writeInt(i);
        zzdf(5, zza);
    }
}
