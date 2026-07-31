package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfgv implements zzguf {
    final /* synthetic */ zzcgy zza;
    final /* synthetic */ zzcpe zzb;
    final /* synthetic */ zzfng zzc;
    final /* synthetic */ zzefy zzd;

    zzfgv(zzcgy zzcgyVar, zzcpe zzcpeVar, zzfng zzfngVar, zzefy zzefyVar) {
        this.zza = zzcgyVar;
        this.zzb = zzcpeVar;
        this.zzc = zzfngVar;
        this.zzd = zzefyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcpe zzcpeVar;
        String str = (String) obj;
        zzcgy zzcgyVar = this.zza;
        zzffu zzC = zzcgyVar.zzC();
        if (zzC != null && !zzC.zzai) {
            com.google.android.gms.ads.internal.util.client.zzv zzvVar = zzC.zzax;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlb)).booleanValue() && (zzcpeVar = this.zzb) != null && zzcpe.zzc(str)) {
                zzcpeVar.zza(str, this.zzc, com.google.android.gms.ads.internal.client.zzbb.zze(), zzvVar);
                return;
            } else {
                this.zzc.zzb(str, zzvVar, null, null);
                return;
            }
        }
        zzffx zzaC = zzcgyVar.zzaC();
        if (zzaC == null) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingClickGmsgHandler");
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        boolean zzs = com.google.android.gms.ads.internal.zzt.zzh().zzs(zzcgyVar.getContext());
        boolean z = false;
        boolean z2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgN)).booleanValue() && zzC != null && zzC.zzS;
        if (zzC != null && zzC.zzad != null) {
            z = true;
        }
        this.zzd.zze(new zzega(currentTimeMillis, zzaC.zzb, str, (zzs || z2 || z) ? 2 : 1));
    }
}
