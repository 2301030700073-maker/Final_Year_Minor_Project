package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzedc implements zzebo {
    final /* synthetic */ zzedf zza;

    zzedc(zzedf zzedfVar) {
        Objects.requireNonNull(zzedfVar);
        this.zza = zzedfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzebo
    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoS)).booleanValue()) {
            zzdvh zza = this.zza.zzd().zza();
            zza.zzc("action", "ptard");
            zza.zzc("ptard", "r");
            zza.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebo
    public final void zzb(RemoteException remoteException) {
        this.zza.zzc();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoT)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(remoteException, "Preconnect Remote");
        }
    }
}
