package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgar implements zzgab {
    private final ExecutorService zza;
    private final zzifb zzb;
    private final zzifb zzc;
    private final zzghy zzd;
    private final zzifb zze;
    private final zzifw zzf;
    private final zzfxt zzg;

    zzgar(ExecutorService executorService, zzifb zzifbVar, zzifb zzifbVar2, zzghy zzghyVar, zzifb zzifbVar3, zzifw zzifwVar, zzfxt zzfxtVar) {
        this.zza = executorService;
        this.zzb = zzifbVar;
        this.zzc = zzifbVar2;
        this.zzd = zzghyVar;
        this.zze = zzifbVar3;
        this.zzf = zzifwVar;
        this.zzg = zzfxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final String zza() {
        return "1.808261137";
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final ListenableFuture zzb() {
        return zzgui.zzd(new Callable() { // from class: com.google.android.gms.internal.ads.zzgaq
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgar.this.zzh();
                return null;
            }
        }, this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final ListenableFuture zzc(Context context) {
        zzgbh zzh = ((zzgbh) this.zzf.zzb()).zzh(context);
        zzh.zzd(this.zzd.zzb());
        zzh.zzc(zzauz.zzj());
        zzh.zzb(zzfyq.QUERY);
        return zzh.zza().zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final ListenableFuture zzd(Context context, String str, View view, Activity activity) {
        zzgbh zzh = ((zzgbh) this.zzf.zzb()).zzh(context);
        zzh.zzg(view);
        zzh.zzf(activity);
        zzh.zze(true != this.zzg.zze() ? "" : null);
        zzh.zzd(this.zzd.zzc(context, view));
        zzh.zzc(zzauz.zzj());
        zzh.zzb(zzfyq.VIEW);
        return zzh.zza().zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final ListenableFuture zze(Context context, String str, View view, Activity activity) {
        zzifb zzifbVar = this.zze;
        Map zzd = this.zzd.zzd();
        ((zzgaz) zzifbVar.zzb()).zzb(zzd);
        zzgbh zzh = ((zzgbh) this.zzf.zzb()).zzh(context);
        zzh.zzg(view);
        zzh.zzf(null);
        zzh.zze(str);
        zzh.zzd(zzd);
        zzh.zzb(zzfyq.CLICK);
        zzh.zzc(zzauz.zzj());
        return zzh.zza().zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final void zzf(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            ((zzgaz) this.zze.zzb()).zza((MotionEvent) inputEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgab
    public final int zzg() {
        return 2;
    }

    final /* synthetic */ Void zzh() {
        ((zzgbk) this.zzc.zzb()).zza();
        ((zzgcd) this.zzb.zzb()).zza();
        return null;
    }
}
