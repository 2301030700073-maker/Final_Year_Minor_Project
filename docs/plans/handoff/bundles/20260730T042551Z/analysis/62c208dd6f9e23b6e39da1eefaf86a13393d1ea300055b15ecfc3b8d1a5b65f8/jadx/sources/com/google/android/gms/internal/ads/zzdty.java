package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzdty implements zzgcd {
    final /* synthetic */ zzdua zza;

    public zzdty(zzdua zzduaVar) {
        this.zza = zzduaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        long j;
        zzcab zzcabVar;
        synchronized (this) {
            this.zza.zzc = true;
            zzdua zzduaVar = this.zza;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
            j = this.zza.zzd;
            zzduaVar.zzv("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j));
            zzcabVar = this.zza.zze;
            zzcabVar.zzd(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        long j;
        Executor executor;
        final String str = (String) obj;
        synchronized (this) {
            this.zza.zzc = true;
            zzdua zzduaVar = this.zza;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
            j = this.zza.zzd;
            zzduaVar.zzv("com.google.android.gms.ads.MobileAds", true, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (int) (elapsedRealtime - j));
            executor = this.zza.zzi;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtx
                @Override // java.lang.Runnable
                public final void run() {
                    zzdua.zzj(zzdty.this.zza, str);
                }
            });
        }
    }
}
