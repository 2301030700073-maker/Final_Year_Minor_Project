package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgjg extends zzbal implements zzgji {
    zzgjg(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override // com.google.android.gms.internal.ads.zzgji
    public final void zze(String str, Bundle bundle, zzgjk zzgjkVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzban.zzc(zza, bundle);
        zzban.zze(zza, zzgjkVar);
        zzdg(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgji
    public final void zzf(Bundle bundle, zzgjk zzgjkVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, bundle);
        zzban.zze(zza, zzgjkVar);
        zzdg(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgji
    public final void zzg(Bundle bundle, zzgjk zzgjkVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, bundle);
        zzban.zze(zza, zzgjkVar);
        zzdg(3, zza);
    }
}
