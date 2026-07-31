package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeei {
    private final zzbxd zza;

    zzeei(zzbxd zzbxdVar) {
        this.zza = zzbxdVar;
    }

    public final void zza() {
        ListenableFuture zza = this.zza.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziq)).booleanValue()) {
            zzcby.zzb(zza, "persistFlags");
        } else {
            zzcby.zza(zza, "persistFlags");
        }
    }
}
