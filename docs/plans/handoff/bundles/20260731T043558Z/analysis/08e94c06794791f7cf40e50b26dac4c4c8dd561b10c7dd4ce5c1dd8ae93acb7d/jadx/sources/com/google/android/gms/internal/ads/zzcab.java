package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcab extends zzcag {
    final zzifq zza;
    final zzifq zzb;
    final zzifq zzc;
    final zzifq zzd;
    final zzifq zze;
    final zzifq zzf;
    final zzifq zzg;
    final zzifq zzh;
    private final Clock zzj;

    zzcab(Context context, Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzcaf zzcafVar) {
        this.zzj = clock;
        zzifh zza = zzifi.zza(context);
        this.zza = zza;
        zzifh zza2 = zzifi.zza(zzgVar);
        this.zzb = zza2;
        this.zzc = zzifg.zza(zzbzv.zza(zza, zza2));
        zzifh zza3 = zzifi.zza(clock);
        this.zzd = zza3;
        zzifh zza4 = zzifi.zza(zzcafVar);
        this.zze = zza4;
        zzifq zza5 = zzifg.zza(zzbzx.zza(zza3, zza2, zza4));
        this.zzf = zza5;
        zzbzz zzc = zzbzz.zzc(zza3, zza5);
        this.zzg = zzc;
        this.zzh = zzifg.zza(zzcam.zza(zza, zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    final zzbzy zza() {
        return new zzbzy(this.zzj, (zzbzw) this.zzf.zzb());
    }
}
