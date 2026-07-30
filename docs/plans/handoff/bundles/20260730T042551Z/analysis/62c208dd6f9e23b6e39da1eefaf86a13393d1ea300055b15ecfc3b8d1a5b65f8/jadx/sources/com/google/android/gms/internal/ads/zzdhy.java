package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdhy implements zzgcd {
    final /* synthetic */ String zza = "Google";
    final /* synthetic */ zzdia zzb;

    public zzdhy(zzdia zzdiaVar, String str, boolean z) {
        this.zzb = zzdiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfm)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "omid native display exp");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdif zzdifVar;
        zzdif zzdifVar2;
        zzdifVar = this.zzb.zze;
        zzdifVar.zzT((zzcex) obj);
        zzdia zzdiaVar = this.zzb;
        zzdifVar2 = zzdiaVar.zze;
        zzcab zzp = zzdifVar2.zzp();
        zzecr zzf = zzdiaVar.zzf(this.zza, true);
        if (zzf != null && zzp != null) {
            zzp.zzc(zzf);
        } else if (zzp != null) {
            zzp.cancel(false);
        }
    }
}
