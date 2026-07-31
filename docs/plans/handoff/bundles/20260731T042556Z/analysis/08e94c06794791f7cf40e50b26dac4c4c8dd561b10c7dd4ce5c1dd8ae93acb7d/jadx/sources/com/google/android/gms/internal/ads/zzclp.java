package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzclp implements zzdxa {
    final zzifq zza;
    final zzifq zzb;
    final zzifq zzc;
    final zzifq zzd;
    private final Context zze;
    private final zzbmx zzf;
    private final zzckz zzg;
    private final zzclp zzh = this;

    zzclp(zzckz zzckzVar, Context context, zzbmx zzbmxVar) {
        this.zzg = zzckzVar;
        this.zze = context;
        this.zzf = zzbmxVar;
        zzifh zza = zzifi.zza(this);
        this.zza = zza;
        zzifh zza2 = zzifi.zza(zzbmxVar);
        this.zzb = zza2;
        zzdww zzc = zzdww.zzc(zza2);
        this.zzc = zzc;
        this.zzd = zzifg.zza(zzdwy.zza(zza, zzc));
    }

    final zzdwv zza() {
        return zzdww.zzd(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdxa
    public final zzdwx zzb() {
        return (zzdwx) this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdxa
    public final zzdws zzc() {
        return new zzclm(this.zzg, this.zzh, null);
    }

    final /* synthetic */ Context zzd() {
        return this.zze;
    }
}
