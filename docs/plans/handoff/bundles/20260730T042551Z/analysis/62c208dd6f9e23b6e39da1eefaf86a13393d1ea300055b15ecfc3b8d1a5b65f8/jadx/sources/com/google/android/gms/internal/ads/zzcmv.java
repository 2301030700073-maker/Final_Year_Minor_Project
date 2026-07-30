package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
final class zzcmv implements zzgcd {
    final /* synthetic */ String zza;
    final /* synthetic */ zzcmw zzb;

    public zzcmv(zzcmw zzcmwVar, String str) {
        this.zza = str;
        this.zzb = zzcmwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzfcv zzfcvVar;
        zzfiv zzfivVar;
        zzfca zzfcaVar;
        zzfbo zzfboVar;
        List zzu;
        zzcmw zzcmwVar = this.zzb;
        zzfcvVar = zzcmwVar.zzh;
        zzfivVar = zzcmwVar.zzg;
        zzfcaVar = zzcmwVar.zze;
        zzfboVar = zzcmwVar.zzf;
        zzu = zzcmwVar.zzu();
        zzfcvVar.zza(zzfivVar.zzd(zzfcaVar, zzfboVar, false, this.zza, null, zzu));
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfcv zzfcvVar;
        zzfiv zzfivVar;
        zzfca zzfcaVar;
        zzfbo zzfboVar;
        List zzu;
        zzcmw zzcmwVar = this.zzb;
        String str = this.zza;
        String str2 = (String) obj;
        zzfcvVar = zzcmwVar.zzh;
        zzfivVar = zzcmwVar.zzg;
        zzfcaVar = zzcmwVar.zze;
        zzfboVar = zzcmwVar.zzf;
        zzu = zzcmwVar.zzu();
        zzfcvVar.zza(zzfivVar.zzd(zzfcaVar, zzfboVar, false, str, str2, zzu));
    }
}
