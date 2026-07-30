package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzept implements zzher {
    private final zzhfj zza;

    public zzept(zzhfj zzhfjVar, zzhfj zzhfjVar2) {
        this.zza = zzhfjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxs zzn;
        zzeol zza = zzeon.zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zza.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeg)).booleanValue()) {
            zzn = zzfxs.zzo(new zzesd(zza, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeh)).intValue(), scheduledExecutorService));
        } else {
            zzn = zzfxs.zzn();
        }
        zzhez.zzb(zzn);
        return zzn;
    }
}
