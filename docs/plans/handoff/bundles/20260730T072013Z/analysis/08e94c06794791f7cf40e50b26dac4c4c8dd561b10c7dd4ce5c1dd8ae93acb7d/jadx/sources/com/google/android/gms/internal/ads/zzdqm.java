package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzdqm implements zzguf {
    final /* synthetic */ zzffu zza;
    final /* synthetic */ zzffx zzb;
    final /* synthetic */ zzcpe zzc;
    final /* synthetic */ zzdqt zzd;

    zzdqm(zzdqt zzdqtVar, zzffu zzffuVar, zzffx zzffxVar, zzcpe zzcpeVar) {
        this.zza = zzffuVar;
        this.zzb = zzffxVar;
        this.zzc = zzcpeVar;
        Objects.requireNonNull(zzdqtVar);
        this.zzd = zzdqtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcgy zzcgyVar = (zzcgy) obj;
        zzffu zzffuVar = this.zza;
        zzcgyVar.zzaD(zzffuVar, this.zzb);
        zzciw zzP = zzcgyVar.zzP();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlf)).booleanValue() && zzP != null) {
            zzcpe zzcpeVar = this.zzc;
            zzdqt zzdqtVar = this.zzd;
            zzP.zzd(zzcpeVar, zzdqtVar.zzm(), zzdqtVar.zzn());
            zzP.zze(zzcpeVar, zzdqtVar.zzm(), zzdqtVar.zzl());
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzob)).booleanValue() || zzP == null) {
            return;
        }
        zzP.zzb(zzffuVar);
    }
}
