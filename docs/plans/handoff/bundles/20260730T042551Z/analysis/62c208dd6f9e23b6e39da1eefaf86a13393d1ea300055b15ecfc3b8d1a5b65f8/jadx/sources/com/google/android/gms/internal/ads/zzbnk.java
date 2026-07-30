package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzbnk implements zzcaf {
    final /* synthetic */ zzbnm zza;

    public zzbnk(zzbnm zzbnmVar) {
        this.zza = zzbnmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzbnr zzbnrVar;
        com.google.android.gms.ads.internal.util.zze.zza("Releasing engine reference.");
        zzbnrVar = this.zza.zzb;
        zzbnrVar.zzd();
    }
}
