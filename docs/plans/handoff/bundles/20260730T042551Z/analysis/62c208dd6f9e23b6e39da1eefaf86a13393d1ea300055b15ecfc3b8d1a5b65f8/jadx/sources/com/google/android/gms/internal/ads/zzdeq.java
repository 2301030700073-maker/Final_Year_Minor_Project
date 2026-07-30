package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzdeq extends zzcqz {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdcw zze;
    private final zzdgc zzf;
    private final zzcru zzg;
    private final zzfnt zzh;
    private final zzcwg zzi;
    private final zzbzq zzj;
    private boolean zzk;

    public zzdeq(zzcqy zzcqyVar, Context context, zzcex zzcexVar, zzdcw zzdcwVar, zzdgc zzdgcVar, zzcru zzcruVar, zzfnt zzfntVar, zzcwg zzcwgVar, zzbzq zzbzqVar) {
        super(zzcqyVar);
        this.zzk = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcexVar);
        this.zze = zzdcwVar;
        this.zzf = zzdgcVar;
        this.zzg = zzcruVar;
        this.zzh = zzfntVar;
        this.zzi = zzcwgVar;
        this.zzj = zzbzqVar;
    }

    public final void finalize() {
        try {
            final zzcex zzcexVar = (zzcex) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgA)).booleanValue()) {
                if (!this.zzk && zzcexVar != null) {
                    zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdep
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcex.this.destroy();
                        }
                    });
                }
            } else if (zzcexVar != null) {
                zzcexVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    public final boolean zzc(boolean z, Activity activity) {
        zzfbo zzD;
        this.zze.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaM)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            if (com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzi.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaN)).booleanValue()) {
                    this.zzh.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        zzcex zzcexVar = (zzcex) this.zzd.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlL)).booleanValue() || zzcexVar == null || (zzD = zzcexVar.zzD()) == null || !zzD.zzar || zzD.zzas == this.zzj.zzb()) {
            if (this.zzk) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("The interstitial ad has been shown.");
                this.zzi.zza(zzfdk.zzd(10, null, null));
            }
            Activity activity2 = activity;
            if (!this.zzk) {
                if (activity == null) {
                    activity2 = this.zzc;
                }
                try {
                    this.zzf.zza(z, activity2, this.zzi);
                    this.zze.zza();
                    this.zzk = true;
                    return true;
                } catch (zzdgb e) {
                    this.zzi.zzc(e);
                }
            }
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The interstitial consent form has been shown.");
            this.zzi.zza(zzfdk.zzd(12, "The consent form has already been shown.", null));
        }
        return false;
    }
}
