package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbjk extends zzbal implements zzbjm {
    zzbjk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final void zze(zzbjc zzbjcVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbjcVar);
        zza.writeString(str);
        zzdf(1, zza);
    }
}
