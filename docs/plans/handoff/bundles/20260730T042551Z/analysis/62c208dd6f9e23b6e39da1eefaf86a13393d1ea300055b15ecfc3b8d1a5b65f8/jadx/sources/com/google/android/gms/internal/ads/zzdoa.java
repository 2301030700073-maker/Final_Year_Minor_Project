package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzdoa extends zzcqz {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdgc zze;
    private final zzdcw zzf;
    private final zzcwg zzg;
    private final zzcxn zzh;
    private final zzcru zzi;
    private final zzbwm zzj;
    private final zzfnt zzk;
    private final zzfcc zzl;
    private boolean zzm;

    public zzdoa(zzcqy zzcqyVar, Context context, zzcex zzcexVar, zzdgc zzdgcVar, zzdcw zzdcwVar, zzcwg zzcwgVar, zzcxn zzcxnVar, zzcru zzcruVar, zzfbo zzfboVar, zzfnt zzfntVar, zzfcc zzfccVar) {
        super(zzcqyVar);
        this.zzm = false;
        this.zzc = context;
        this.zze = zzdgcVar;
        this.zzd = new WeakReference(zzcexVar);
        this.zzf = zzdcwVar;
        this.zzg = zzcwgVar;
        this.zzh = zzcxnVar;
        this.zzi = zzcruVar;
        this.zzk = zzfntVar;
        zzbwi zzbwiVar = zzfboVar.zzl;
        this.zzj = new zzbxg(zzbwiVar != null ? zzbwiVar.zza : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, zzbwiVar != null ? zzbwiVar.zzb : 1);
        this.zzl = zzfccVar;
    }

    public final void finalize() {
        try {
            final zzcex zzcexVar = (zzcex) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgA)).booleanValue()) {
                if (!this.zzm && zzcexVar != null) {
                    zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnz
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

    public final Bundle zza() {
        return this.zzh.zzb();
    }

    public final zzbwm zzc() {
        return this.zzj;
    }

    public final zzfcc zzd() {
        return this.zzl;
    }

    public final boolean zze() {
        return this.zzi.zzg();
    }

    public final boolean zzf() {
        return this.zzm;
    }

    public final boolean zzg() {
        zzcex zzcexVar = (zzcex) this.zzd.get();
        return (zzcexVar == null || zzcexVar.zzaG()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    public final boolean zzh(boolean z, Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaM)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            if (com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzg.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaN)).booleanValue()) {
                    this.zzk.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        if (this.zzm) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The rewarded ad have been showed.");
            this.zzg.zza(zzfdk.zzd(10, null, null));
            return false;
        }
        this.zzm = true;
        this.zzf.zzb();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzc;
        }
        try {
            this.zze.zza(z, activity2, this.zzg);
            this.zzf.zza();
            return true;
        } catch (zzdgb e) {
            this.zzg.zzc(e);
            return false;
        }
    }
}
