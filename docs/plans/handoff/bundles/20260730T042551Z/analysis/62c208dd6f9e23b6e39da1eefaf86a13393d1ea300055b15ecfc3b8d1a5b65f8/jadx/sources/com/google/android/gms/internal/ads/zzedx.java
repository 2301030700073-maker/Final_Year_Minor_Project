package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzedx implements zzecw {
    private final zzcpq zza;
    private final Context zzb;
    private final zzdow zzc;
    private final zzfcj zzd;
    private final Executor zze;
    private final zzfuc zzf;
    private final zzdrq zzg;

    public zzedx(zzcpq zzcpqVar, Context context, Executor executor, zzdow zzdowVar, zzfcj zzfcjVar, zzfuc zzfucVar, zzdrq zzdrqVar) {
        this.zzb = context;
        this.zza = zzcpqVar;
        this.zze = executor;
        this.zzc = zzdowVar;
        this.zzd = zzfcjVar;
        this.zzf = zzfucVar;
        this.zzg = zzdrqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        return zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzedw
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzedx.this.zzc(zzfcaVar, zzfboVar, obj);
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar = zzfboVar.zzs;
        return (zzfbtVar == null || zzfbtVar.zza == null) ? false : true;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(zzfca zzfcaVar, zzfbo zzfboVar, Object obj) {
        zzbcc zzbccVar = zzbcl.zzcm;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzg.zza(), zzdre.RENDERING_WEBVIEW_CREATION_START.zza());
        }
        com.google.android.gms.ads.internal.client.zzs zza = zzfcp.zza(this.zzb, zzfboVar.zzu);
        final zzcex zza2 = this.zzc.zza(zza, zzfboVar, zzfcaVar.zzb.zzb);
        zza2.zzac(zzfboVar.zzW);
        View zza3 = (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhJ)).booleanValue() && zzfboVar.zzag) ? zzcql.zza(this.zzb, zza2.zzF(), zzfboVar) : new zzdoz(this.zzb, zza2.zzF(), (com.google.android.gms.ads.internal.util.zzau) this.zzf.apply(zzfboVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzg.zza(), zzdre.RENDERING_WEBVIEW_CREATION_END.zza());
        }
        final zzcon zza4 = this.zza.zza(new zzcrp(zzfcaVar, zzfboVar, null), new zzcot(zza3, zza2, new zzcqx() { // from class: com.google.android.gms.internal.ads.zzedr
            @Override // com.google.android.gms.internal.ads.zzcqx
            public final com.google.android.gms.ads.internal.client.zzeb zza() {
                return zzcex.this.zzq();
            }
        }, zzfcp.zzb(zza)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
            V1.m2496class(this.zzg.zza(), zzdre.RENDERING_AD_COMPONENT_CREATION_END.zza());
        }
        zza4.zzh().zzi(zza2, false, null, this.zzg.zza());
        zzcwl zzc = zza4.zzc();
        zzcwn zzcwnVar = new zzcwn() { // from class: com.google.android.gms.internal.ads.zzeds
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzr() {
                zzcex zzcexVar = zzcex.this;
                if (zzcexVar.zzN() != null) {
                    zzcexVar.zzN().zzs();
                }
            }
        };
        zzgcs zzgcsVar = zzbzw.zzg;
        zzc.zzo(zzcwnVar, zzgcsVar);
        String str = zzfboVar.zzs.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && zza4.zzi().zze(true)) {
            str = zzcgi.zzb(str, zzcgi.zza(zzfboVar));
        }
        zza4.zzh();
        InterfaceFutureC3942wq zzj = zzdov.zzj(zza2, zzfboVar.zzs.zzb, str, this.zzg.zza());
        if (zzfboVar.zzM) {
            zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedt
                @Override // java.lang.Runnable
                public final void run() {
                    zzcex.this.zzah();
                }
            }, this.zze);
        }
        zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedu
            @Override // java.lang.Runnable
            public final void run() {
                zzedx.this.zzd(zza2);
            }
        }, this.zze);
        return zzgch.zzm(zzj, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzedv
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj2) {
                return zzcon.this.zza();
            }
        }, zzgcsVar);
    }

    public final /* synthetic */ void zzd(zzcex zzcexVar) {
        zzcexVar.zzab();
        zzfcj zzfcjVar = this.zzd;
        zzcfz zzq = zzcexVar.zzq();
        com.google.android.gms.ads.internal.client.zzga zzgaVar = zzfcjVar.zza;
        if (zzgaVar != null && zzq != null) {
            zzq.zzs(zzgaVar);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbr)).booleanValue() || zzcexVar.isAttachedToWindow()) {
            return;
        }
        zzcexVar.onPause();
        zzcexVar.zzav(true);
    }
}
