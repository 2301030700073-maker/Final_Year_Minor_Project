package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbwz extends zzbal implements zzbxb {
    zzbwz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zze(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, parcelFileDescriptor);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zzf(com.google.android.gms.ads.internal.util.zzba zzbaVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbaVar);
        zzdf(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbxj zzbxjVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, parcelFileDescriptor);
        zzban.zzc(zza, zzbxjVar);
        zzdf(3, zza);
    }
}
