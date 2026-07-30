package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class zzbva extends zzaya implements zzbvc {
    public zzbva(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbvc
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbbVar);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvc
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel zza = zza();
        zzayc.zzd(zza, parcelFileDescriptor);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvc
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvk zzbvkVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, parcelFileDescriptor);
        zzayc.zzd(zza, zzbvkVar);
        zzda(3, zza);
    }
}
