package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Objects;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdhw extends zzcto {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdfz zze;
    private final zzdjl zzf;
    private final zzcuj zzg;
    private final zzfsc zzh;
    private final zzczb zzi;
    private final zzcbn zzj;
    private final zzdvi zzk;
    private boolean zzl;

    zzdhw(zzctn zzctnVar, Context context, @Nullable zzcgy zzcgyVar, zzdfz zzdfzVar, zzdjl zzdjlVar, zzcuj zzcujVar, zzfsc zzfscVar, zzczb zzczbVar, zzcbn zzcbnVar, zzdvi zzdviVar) {
        super(zzctnVar);
        this.zzl = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcgyVar);
        this.zze = zzdfzVar;
        this.zzf = zzdjlVar;
        this.zzg = zzcujVar;
        this.zzh = zzfscVar;
        this.zzi = zzczbVar;
        this.zzj = zzcbnVar;
        this.zzk = zzdviVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcgy zzcgyVar = (zzcgy) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhk)).booleanValue()) {
                if (!this.zzl && zzcgyVar != null) {
                    zzgus zzgusVar = zzcbv.zzf;
                    Objects.requireNonNull(zzcgyVar);
                    zzgusVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhv
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcgy.this.destroy();
                        }
                    });
                }
            } else if (zzcgyVar != null) {
                zzcgyVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.content.Context] */
    public final boolean zza(boolean z, @Nullable Activity activity) {
        zzffu zzC;
        zzdfz zzdfzVar = this.zze;
        zzdfzVar.zza();
        com.google.android.gms.ads.internal.zzt.zzc();
        zzdjl zzdjlVar = this.zzf;
        if (!com.google.android.gms.ads.internal.util.zzs.zzS(zzdjlVar.zzb())) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzox)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzR(this.zzc, this.zzb, this.zzk);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaT)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                if (com.google.android.gms.ads.internal.util.zzs.zzK(this.zzc)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies");
                    this.zzi.zze();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaU)).booleanValue()) {
                        this.zzh.zza(this.zza.zzb.zzb.zzb);
                    }
                    return false;
                }
            }
        }
        zzcgy zzcgyVar = (zzcgy) this.zzd.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmT)).booleanValue() || zzcgyVar == null || (zzC = zzcgyVar.zzC()) == null || !zzC.zzar || zzC.zzas == this.zzj.zzj()) {
            if (this.zzl) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The interstitial ad has been shown.");
                this.zzi.zzc(zzfhp.zzd(10, null, null));
            }
            Activity activity2 = activity;
            if (!this.zzl) {
                if (activity == null) {
                    activity2 = this.zzc;
                }
                try {
                    zzdjlVar.zza(z, activity2, this.zzi);
                    zzdfzVar.zzb();
                    this.zzl = true;
                    return true;
                } catch (zzdjk e) {
                    this.zzi.zzd(e);
                }
            }
        } else {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The interstitial consent form has been shown.");
            this.zzi.zzc(zzfhp.zzd(12, "The consent form has already been shown.", null));
        }
        return false;
    }

    public final boolean zzb() {
        return this.zzg.zzl();
    }
}
