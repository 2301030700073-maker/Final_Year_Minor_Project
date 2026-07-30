package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdvq implements zzgcd {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdvs zzb;

    public zzdvq(zzdvs zzdvsVar, String str) {
        this.zza = str;
        this.zzb = zzdvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdvg zzdvgVar;
        ((zzduj) obj).zze();
        zzdvgVar = this.zzb.zzd;
        zzdvgVar.zzk(this.zza);
    }
}
