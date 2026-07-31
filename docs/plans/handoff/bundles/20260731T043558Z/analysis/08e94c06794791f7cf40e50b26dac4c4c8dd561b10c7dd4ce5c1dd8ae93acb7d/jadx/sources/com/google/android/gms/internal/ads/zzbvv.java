package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbvv extends zzbal implements zzbvx {
    zzbvv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbvx
    public final void zze(List list) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzdf(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvx
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdf(2, zza);
    }
}
