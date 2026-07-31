package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzclj implements zzfcl {
    final zzifq zza;
    final zzifq zzb;
    final zzifq zzc;
    final zzifq zzd;
    final zzifq zze;
    final zzifq zzf;
    private final Context zzg;
    private final com.google.android.gms.ads.internal.client.zzr zzh;
    private final String zzi;
    private final zzckz zzj;

    zzclj(zzckz zzckzVar, Context context, String str, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzj = zzckzVar;
        this.zzg = context;
        this.zzh = zzrVar;
        this.zzi = str;
        zzifh zza = zzifi.zza(context);
        this.zza = zza;
        zzifh zza2 = zzifi.zza(zzrVar);
        this.zzb = zza2;
        zzifq zza3 = zzifg.zza(zzeou.zza(zzckzVar.zzl));
        this.zzc = zza3;
        zzifq zza4 = zzifg.zza(zzeoz.zza());
        this.zzd = zza4;
        zzifq zza5 = zzifg.zza(zzddw.zza());
        this.zze = zza5;
        this.zzf = zzifg.zza(zzfcj.zza(zza, zzckzVar.zza, zza2, zzckzVar.zzV, zza3, zza4, zzfgp.zza(), zza5));
    }

    @Override // com.google.android.gms.internal.ads.zzfcl
    public final zzeny zza() {
        zzfci zzfciVar = (zzfci) this.zzf.zzb();
        zzeot zzeotVar = (zzeot) this.zzc.zzb();
        zzckz zzckzVar = this.zzj;
        zzifq zzifqVar = zzckzVar.zzl;
        return new zzeny(this.zzg, this.zzh, this.zzi, zzfciVar, zzeotVar, zzckk.zzd(zzckzVar.zzI()), (zzdvi) zzifqVar.zzb());
    }
}
