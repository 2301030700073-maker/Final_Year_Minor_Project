package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfiz implements zzgcd {
    final /* synthetic */ zzfgw zza;
    final /* synthetic */ zzfhh zzb;
    final /* synthetic */ zzfja zzc;

    public zzfiz(zzfja zzfjaVar, zzfgw zzfgwVar, zzfhh zzfhhVar) {
        this.zza = zzfgwVar;
        this.zzb = zzfhhVar;
        this.zzc = zzfjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzfhk zzfhkVar;
        this.zza.zzg(false);
        zzfhh zzfhhVar = this.zzb;
        if (zzfhhVar != null) {
            zzfhhVar.zza(this.zza);
            zzfhhVar.zzh();
        } else {
            zzfja zzfjaVar = this.zzc;
            zzfgw zzfgwVar = this.zza;
            zzfhkVar = zzfjaVar.zzf;
            zzfhkVar.zzb(zzfgwVar.zzm());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfhk zzfhkVar;
        this.zza.zzg(((com.google.android.gms.ads.internal.util.client.zzt) obj) == com.google.android.gms.ads.internal.util.client.zzt.SUCCESS);
        zzfhh zzfhhVar = this.zzb;
        if (zzfhhVar != null) {
            zzfhhVar.zza(this.zza);
            zzfhhVar.zzh();
        } else {
            zzfja zzfjaVar = this.zzc;
            zzfgw zzfgwVar = this.zza;
            zzfhkVar = zzfjaVar.zzf;
            zzfhkVar.zzb(zzfgwVar.zzm());
        }
    }
}
