package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeik implements zzehk {
    private final zzcsl zza;
    private final Context zzb;
    private final zzdse zzc;
    private final zzfgn zzd;
    private final Executor zze;
    private final zzglu zzf;
    private final zzdvc zzg;

    public zzeik(zzcsl zzcslVar, Context context, Executor executor, zzdse zzdseVar, zzfgn zzfgnVar, zzglu zzgluVar, zzdvc zzdvcVar) {
        this.zzb = context;
        this.zza = zzcslVar;
        this.zze = executor;
        this.zzc = zzdseVar;
        this.zzd = zzfgnVar;
        this.zzf = zzgluVar;
        this.zzg = zzdvcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final boolean zza(zzfgf zzfgfVar, zzffu zzffuVar) {
        zzffz zzffzVar = zzffuVar.zzs;
        return (zzffzVar == null || zzffzVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final ListenableFuture zzb(final zzfgf zzfgfVar, final zzffu zzffuVar) {
        return zzgui.zzj(zzgui.zza(null), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzeij
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzeik.this.zzc(zzfgfVar, zzffuVar, obj);
            }
        }, this.zze);
    }

    final /* synthetic */ ListenableFuture zzc(zzfgf zzfgfVar, zzffu zzffuVar, Object obj) {
        zzbel zzbelVar = zzbeu.zzcy;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzg.zze().putLong(zzduq.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        Context context = this.zzb;
        com.google.android.gms.ads.internal.client.zzr zza = zzfgt.zza(context, zzffuVar.zzu);
        final zzcgy zza2 = this.zzc.zza(zza, zzffuVar, zzfgfVar.zzb.zzb);
        zza2.zzaw(zzffuVar.zzW);
        View zza3 = (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziI)).booleanValue() && zzffuVar.zzag) ? zzcta.zza(context, zza2.zzE(), zzffuVar) : new zzdsh(context, zza2.zzE(), (com.google.android.gms.ads.internal.util.zzat) this.zzf.apply(zzffuVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzg.zze().putLong(zzduq.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzcsl zzcslVar = this.zza;
        zzcue zzcueVar = new zzcue(zzfgfVar, zzffuVar, null);
        Objects.requireNonNull(zza2);
        final zzcrh zzf = zzcslVar.zzf(zzcueVar, new zzcrn(zza3, zza2, new zzctm() { // from class: com.google.android.gms.internal.ads.zzeif
            @Override // com.google.android.gms.internal.ads.zzctm
            public final /* synthetic */ com.google.android.gms.ads.internal.client.zzed zza() {
                return zzcgy.this.zzh();
            }
        }, zzfgt.zzb(zza)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzg.zze().putLong(zzduq.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzdsd zzj = zzf.zzj();
        zzdvc zzdvcVar = this.zzg;
        zzj.zzi(zza2, false, null, zzdvcVar.zze());
        zzczg zzd = zzf.zzd();
        zzczi zzcziVar = new zzczi() { // from class: com.google.android.gms.internal.ads.zzeig
            @Override // com.google.android.gms.internal.ads.zzczi
            public final /* synthetic */ void zzdw() {
                zzcgy zzcgyVar = zzcgy.this;
                if (zzcgyVar.zzP() != null) {
                    zzcgyVar.zzP().zzq();
                }
            }
        };
        zzgus zzgusVar = zzcbv.zzg;
        zzd.zzq(zzcziVar, zzgusVar);
        zzffz zzffzVar = zzffuVar.zzs;
        String str = zzffzVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfS)).booleanValue() && zzf.zzm().zza(true)) {
            str = zzcip.zza(str, zzcip.zzb(zzffuVar));
        }
        zzf.zzj();
        ListenableFuture zzj2 = zzdsd.zzj(zza2, zzffzVar.zzb, str, zzdvcVar.zze(), zzcslVar.zze());
        if (zzffuVar.zzM) {
            Objects.requireNonNull(zza2);
            zzj2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeie
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcgy.this.zzav();
                }
            }, this.zze);
        }
        zzj2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeih
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzeik.this.zzd(zza2);
            }
        }, this.zze);
        return zzgui.zzk(zzj2, new zzglu() { // from class: com.google.android.gms.internal.ads.zzeii
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj2) {
                return zzcrh.this.zzi();
            }
        }, zzgusVar);
    }

    final /* synthetic */ void zzd(zzcgy zzcgyVar) {
        zzcgyVar.zzJ();
        zzfgn zzfgnVar = this.zzd;
        zzcie zzh = zzcgyVar.zzh();
        com.google.android.gms.ads.internal.client.zzga zzgaVar = zzfgnVar.zza;
        if (zzgaVar != null && zzh != null) {
            zzh.zzc(zzgaVar);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbA)).booleanValue() || zzcgyVar.isAttachedToWindow()) {
            return;
        }
        zzcgyVar.onPause();
        zzcgyVar.zzaG(true);
    }
}
