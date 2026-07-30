package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzepx implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;

    public zzepx(zzhfj zzhfjVar, zzhfj zzhfjVar2) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxs zzn;
        zzeqv zzb = ((zzeqx) this.zza).zzb();
        Context zza = ((zzche) this.zzb).zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlk)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            if (com.google.android.gms.ads.internal.util.zzs.zzC(zza)) {
                zzn = zzfxs.zzo(zzb);
                zzhez.zzb(zzn);
                return zzn;
            }
        }
        zzn = zzfxs.zzn();
        zzhez.zzb(zzn);
        return zzn;
    }
}
