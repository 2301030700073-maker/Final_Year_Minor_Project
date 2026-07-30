package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzdtz extends zzblq {
    final /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzfgw zzd;
    final /* synthetic */ zzcab zze;
    final /* synthetic */ zzdua zzf;

    public zzdtz(zzdua zzduaVar, Object obj, String str, long j, zzfgw zzfgwVar, zzcab zzcabVar) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = zzfgwVar;
        this.zze = zzcabVar;
        this.zzf = zzduaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblr
    public final void zze(String str) {
        zzdsh zzdshVar;
        zzdcr zzdcrVar;
        zzfhk zzfhkVar;
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, false, str, (int) (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - this.zzc));
            zzdshVar = this.zzf.zzl;
            zzdshVar.zzb(this.zzb, "error");
            zzdcrVar = this.zzf.zzo;
            zzdcrVar.zzb(this.zzb, "error");
            zzfhkVar = this.zzf.zzp;
            zzfgw zzfgwVar = this.zzd;
            zzfgwVar.zzc(str);
            zzfgwVar.zzg(false);
            zzfhkVar.zzb(zzfgwVar.zzm());
            this.zze.zzc(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblr
    public final void zzf() {
        zzdsh zzdshVar;
        zzdcr zzdcrVar;
        zzfhk zzfhkVar;
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, true, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (int) (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - this.zzc));
            zzdshVar = this.zzf.zzl;
            zzdshVar.zzd(this.zzb);
            zzdcrVar = this.zzf.zzo;
            zzdcrVar.zzd(this.zzb);
            zzfhkVar = this.zzf.zzp;
            zzfgw zzfgwVar = this.zzd;
            zzfgwVar.zzg(true);
            zzfhkVar.zzb(zzfgwVar.zzm());
            this.zze.zzc(Boolean.TRUE);
        }
    }
}
