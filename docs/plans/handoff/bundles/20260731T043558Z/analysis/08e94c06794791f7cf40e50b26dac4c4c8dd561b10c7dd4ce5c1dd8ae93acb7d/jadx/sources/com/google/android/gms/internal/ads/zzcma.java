package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcma implements zzffo {
    final zzifq zza;
    final zzifq zzb;
    final zzifq zzc;
    final zzifq zzd;
    final zzifq zze;
    final zzifq zzf;
    final zzifq zzg;
    final zzifq zzh;
    private final zzckz zzi;

    zzcma(zzckz zzckzVar, Context context, String str) {
        this.zzi = zzckzVar;
        zzifh zza = zzifi.zza(context);
        this.zza = zza;
        zzifq zzifqVar = zzckzVar.zzbs;
        zzfdp zzc = zzfdp.zzc(zza, zzifqVar, zzckzVar.zzbt);
        this.zzb = zzc;
        zzifq zza2 = zzifg.zza(zzfez.zza(zzifqVar));
        this.zzc = zza2;
        zzifq zza3 = zzifg.zza(zzfgl.zza());
        this.zzd = zza3;
        zzifq zza4 = zzifg.zza(zzffi.zza(zza, zzckzVar.zza, zzckzVar.zzV, zzc, zza2, zzfgp.zza(), zza3));
        this.zze = zza4;
        this.zzf = zzifg.zza(zzffs.zza(zza4, zza2, zza3));
        zzifh zzc2 = zzifi.zzc(str);
        this.zzg = zzc2;
        this.zzh = zzifg.zza(zzffm.zza(zzc2, zza4, zza, zza2, zza3, zzckzVar.zzi, zzckzVar.zzY, zzckzVar.zzl));
    }

    @Override // com.google.android.gms.internal.ads.zzffo
    public final zzffr zza() {
        return (zzffr) this.zzf.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzffo
    public final zzffl zzb() {
        return (zzffl) this.zzh.zzb();
    }
}
