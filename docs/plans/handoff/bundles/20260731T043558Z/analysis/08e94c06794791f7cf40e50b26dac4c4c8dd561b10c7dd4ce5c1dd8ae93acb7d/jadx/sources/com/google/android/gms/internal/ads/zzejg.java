package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzejg implements zzehk {
    private final Context zza;
    private final zzdse zzb;
    private final zzdjd zzc;
    private final zzfgn zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbma zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjS)).booleanValue();
    private final zzegj zzi;
    private final zzdvc zzj;
    private final zzdvi zzk;

    public zzejg(Context context, VersionInfoParcel versionInfoParcel, zzfgn zzfgnVar, Executor executor, zzdjd zzdjdVar, zzdse zzdseVar, zzbma zzbmaVar, zzegj zzegjVar, zzdvc zzdvcVar, zzdvi zzdviVar) {
        this.zza = context;
        this.zzd = zzfgnVar;
        this.zzc = zzdjdVar;
        this.zze = executor;
        this.zzf = versionInfoParcel;
        this.zzb = zzdseVar;
        this.zzg = zzbmaVar;
        this.zzi = zzegjVar;
        this.zzj = zzdvcVar;
        this.zzk = zzdviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final boolean zza(zzfgf zzfgfVar, zzffu zzffuVar) {
        zzffz zzffzVar = zzffuVar.zzs;
        return (zzffzVar == null || zzffzVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final ListenableFuture zzb(final zzfgf zzfgfVar, final zzffu zzffuVar) {
        final zzdsi zzdsiVar = new zzdsi();
        ListenableFuture zza = zzgui.zza(null);
        zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzejd
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzejg.this.zzc(zzffuVar, zzfgfVar, zzdsiVar, obj);
            }
        };
        Executor executor = this.zze;
        ListenableFuture zzj = zzgui.zzj(zza, zzgtqVar, executor);
        Objects.requireNonNull(zzdsiVar);
        zzj.addListener(new Runnable(zzdsiVar) { // from class: com.google.android.gms.internal.ads.zzejf
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
            }
        }, executor);
        return zzj;
    }

    final /* synthetic */ ListenableFuture zzc(final zzffu zzffuVar, zzfgf zzfgfVar, zzdsi zzdsiVar, Object obj) {
        final zzejg zzejgVar;
        zzbel zzbelVar = zzbeu.zzcy;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzj.zze().putLong(zzduq.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzdse zzdseVar = this.zzb;
        zzfgn zzfgnVar = this.zzd;
        final zzcgy zza = zzdseVar.zza(zzfgnVar.zzf, zzffuVar, zzfgfVar.zzb.zzb);
        zza.zzaw(zzffuVar.zzW);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzj.zze().putLong(zzduq.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzcca zzccaVar = new zzcca();
        zzdjd zzdjdVar = this.zzc;
        zzcue zzcueVar = new zzcue(zzfgfVar, zzffuVar, null);
        Context context = this.zza;
        VersionInfoParcel versionInfoParcel = this.zzf;
        boolean z = this.zzh;
        zzbma zzbmaVar = this.zzg;
        final zzdhx zzd = zzdjdVar.zzd(zzcueVar, new zzdia(new zzeje(context, versionInfoParcel, zzccaVar, zzffuVar, zza, zzfgnVar, z, zzbmaVar, this.zzi, this.zzk), zza));
        zzccaVar.zzc(zzd);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            zzejgVar = this;
            zzejgVar.zzj.zze().putLong(zzduq.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        } else {
            zzejgVar = this;
        }
        zzd.zzd().zzq(new zzczi() { // from class: com.google.android.gms.internal.ads.zzejb
            @Override // com.google.android.gms.internal.ads.zzczi
            public final /* synthetic */ void zzdw() {
                zzcgy zzcgyVar = zzcgy.this;
                if (zzcgyVar.zzP() != null) {
                    zzcgyVar.zzP().zzq();
                }
            }
        }, zzcbv.zzg);
        zzffz zzffzVar = zzffuVar.zzs;
        String str = zzffzVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfS)).booleanValue() && zzd.zzl().zza(true)) {
            str = zzcip.zza(str, zzcip.zzb(zzffuVar));
        }
        zzdsd zzk = zzd.zzk();
        zzbma zzbmaVar2 = true != z ? null : zzbmaVar;
        zzdvc zzdvcVar = zzejgVar.zzj;
        zzk.zzi(zza, true, zzbmaVar2, zzdvcVar.zze());
        zzd.zzk();
        return zzgui.zzk(zzdsd.zzj(zza, zzffzVar.zzb, str, zzdvcVar.zze(), zzdjdVar.zzc()), new zzglu(zzejgVar) { // from class: com.google.android.gms.internal.ads.zzejc
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj2) {
                zzcgy zzcgyVar = zza;
                if (zzffuVar.zzM) {
                    zzcgyVar.zzav();
                }
                zzdhx zzdhxVar = zzd;
                zzcgyVar.zzJ();
                zzcgyVar.onPause();
                return zzdhxVar.zzh();
            }
        }, zzejgVar.zze);
    }
}
