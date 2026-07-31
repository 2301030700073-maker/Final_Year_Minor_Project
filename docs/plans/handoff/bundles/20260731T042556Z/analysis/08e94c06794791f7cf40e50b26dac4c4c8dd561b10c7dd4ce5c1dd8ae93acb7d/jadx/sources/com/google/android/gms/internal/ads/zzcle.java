package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcle implements zzfay {
    final zzifq zza;
    final zzifq zzb;
    final zzifq zzc;
    final zzifq zzd;
    final zzifq zze;
    final zzifq zzf;
    private final zzckz zzg;

    zzcle(zzckz zzckzVar, Context context, String str) {
        this.zzg = zzckzVar;
        zzifh zza = zzifi.zza(context);
        this.zza = zza;
        zzifh zza2 = zzifi.zza(str);
        this.zzb = zza2;
        zzifq zzifqVar = zzckzVar.zzbs;
        zzfdo zzc = zzfdo.zzc(zza, zzifqVar, zzckzVar.zzbt);
        this.zzc = zzc;
        zzifq zza3 = zzifg.zza(zzfbv.zza(zzifqVar));
        this.zzd = zza3;
        zzifq zzifqVar2 = zzckzVar.zza;
        zzifq zzifqVar3 = zzckzVar.zzV;
        zzfgp zza4 = zzfgp.zza();
        zzifq zzifqVar4 = zzckzVar.zzi;
        zzifq zza5 = zzifg.zza(zzfbx.zza(zza, zzifqVar2, zzifqVar3, zzc, zza3, zza4, zzifqVar4));
        this.zze = zza5;
        this.zzf = zzifg.zza(zzfcd.zza(zzifqVar3, zza, zza2, zza5, zza3, zzifqVar4, zzckzVar.zzl));
    }

    @Override // com.google.android.gms.internal.ads.zzfay
    public final zzfcc zza() {
        return (zzfcc) this.zzf.zzb();
    }
}
