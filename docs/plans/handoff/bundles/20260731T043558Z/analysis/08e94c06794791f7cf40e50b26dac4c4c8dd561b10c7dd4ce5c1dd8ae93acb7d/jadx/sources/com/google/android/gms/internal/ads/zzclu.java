package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzclu implements zzfeb {
    final zzifq zza;
    final zzifq zzb;
    final zzifq zzc;
    final zzifq zzd;
    final zzifq zze;
    final zzifq zzf;
    final zzifq zzg;
    private final zzckz zzh;

    zzclu(zzckz zzckzVar, Context context, String str, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzh = zzckzVar;
        zzifh zza = zzifi.zza(context);
        this.zza = zza;
        zzifh zza2 = zzifi.zza(zzrVar);
        this.zzb = zza2;
        zzifh zza3 = zzifi.zza(str);
        this.zzc = zza3;
        zzifq zzifqVar = zzckzVar.zzl;
        zzifq zza4 = zzifg.zza(zzeou.zza(zzifqVar));
        this.zzd = zza4;
        zzifq zza5 = zzifg.zza(zzfez.zza(zzckzVar.zzbs));
        this.zze = zza5;
        zzifq zza6 = zzifg.zza(zzfdz.zza(zza, zzckzVar.zza, zzckzVar.zzV, zza4, zza5, zzfgp.zza()));
        this.zzf = zza6;
        this.zzg = zzifg.zza(zzepc.zza(zza, zza2, zza3, zza6, zza4, zza5, zzckzVar.zzi, zzckzVar.zzY, zzifqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzfeb
    public final zzepb zza() {
        return (zzepb) this.zzg.zzb();
    }
}
