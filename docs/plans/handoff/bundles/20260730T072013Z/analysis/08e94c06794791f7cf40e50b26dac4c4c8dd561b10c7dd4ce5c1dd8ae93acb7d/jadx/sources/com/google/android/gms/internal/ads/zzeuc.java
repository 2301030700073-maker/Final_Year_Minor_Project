package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeuc implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzeuc(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
    }

    public static zzeuc zza(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzeuc(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgpo zzh;
        zzeva zzb = ((zzevc) this.zza).zzb();
        Context zza = ((zzcjv) this.zzb).zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzms)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            if (com.google.android.gms.ads.internal.util.zzs.zzF(zza)) {
                zzh = zzgpo.zzi(zzb);
                zzifp.zzb(zzh);
                return zzh;
            }
        }
        zzh = zzgpo.zzh();
        zzifp.zzb(zzh);
        return zzh;
    }
}
