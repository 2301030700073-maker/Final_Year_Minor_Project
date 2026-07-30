package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzanc implements zzank {
    private zzab zza;
    private zzef zzb;
    private zzadt zzc;

    public zzanc(String str) {
        zzz zzzVar = new zzz();
        zzzVar.zzaa(str);
        this.zza = zzzVar.zzag();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzdy zzdyVar) {
        zzcw.zzb(this.zzb);
        int i = zzei.zza;
        long zze = this.zzb.zze();
        long zzf = this.zzb.zzf();
        if (zze == -9223372036854775807L || zzf == -9223372036854775807L) {
            return;
        }
        zzab zzabVar = this.zza;
        if (zzf != zzabVar.zzt) {
            zzz zzb = zzabVar.zzb();
            zzb.zzae(zzf);
            zzab zzag = zzb.zzag();
            this.zza = zzag;
            this.zzc.zzm(zzag);
        }
        int zzb2 = zzdyVar.zzb();
        this.zzc.zzr(zzdyVar, zzb2);
        this.zzc.zzt(zze, 1, zzb2, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzef zzefVar, zzacq zzacqVar, zzanx zzanxVar) {
        this.zzb = zzefVar;
        zzanxVar.zzc();
        zzadt zzw = zzacqVar.zzw(zzanxVar.zza(), 5);
        this.zzc = zzw;
        zzw.zzm(this.zza);
    }
}
